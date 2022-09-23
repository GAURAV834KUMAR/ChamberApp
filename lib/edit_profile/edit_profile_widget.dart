import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({Key? key}) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  String uploadedFileUrl = '';
  String? businesstypeValue;
  TextEditingController? businessaddressController;
  TextEditingController? businessnameController;
  TextEditingController? contactpersonController;
  TextEditingController? mobilenoController;
  TextEditingController? storeAreaController;
  String? areaValue;
  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    businessaddressController?.dispose();
    businessnameController?.dispose();
    contactpersonController?.dispose();
    mobilenoController?.dispose();
    storeAreaController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final editProfileUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBlack,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).white,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Edit Profile',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).white,
                    fontSize: 16,
                  ),
            ),
            actions: [
              FFButtonWidget(
                onPressed: () async {
                  final usersUpdateData = createUsersRecordData(
                    displayName: contactpersonController?.text ?? '',
                    phoneNumber: mobilenoController?.text ?? '',
                    firmName: businessnameController?.text ?? '',
                    address: businessaddressController?.text ?? '',
                    businessType: businesstypeValue,
                    photoUrl: uploadedFileUrl,
                    storeArea: storeAreaController?.text ?? '',
                    area: areaValue,
                    storeType: dropDownValue,
                  );
                  await currentUserReference!.update(usersUpdateData);
                  await UpdateBussCall.call(
                    stype: 'Update',
                    name: contactpersonController?.text ?? '',
                    phoneNo: mobilenoController?.text ?? '',
                    bussName: businessnameController?.text ?? '',
                    bussAddress: businessaddressController?.text ?? '',
                    type: businesstypeValue,
                    area: areaValue,
                    id: editProfileUsersRecord.userId,
                  );
                  Navigator.pop(context);
                },
                text: 'Update',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryBlack,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).white,
          body: SafeArea(
            child: Align(
              alignment: AlignmentDirectional(-0.05, -1),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Text(
                        'Tap on image to Insert Shop Photo',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: AuthUserStreamWidget(
                        child: InkWell(
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrls = (await Future.wait(
                                      selectedMedia.map((m) async =>
                                          await uploadData(
                                              m.storagePath, m.bytes))))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrls.length == selectedMedia.length) {
                                setState(
                                    () => uploadedFileUrl = downloadUrls.first);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload media',
                                );
                                return;
                              }
                            }
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              valueOrDefault<String>(
                                currentUserPhoto,
                                'https://picsum.photos/seed/822/600',
                              ),
                              width: MediaQuery.of(context).size.width * 3.5,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: TextFormField(
                              controller: contactpersonController ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.displayName,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Contact Person Name',
                                hintText: 'Contact Person Name',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: TextFormField(
                              controller: mobilenoController ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.phoneNumber,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Mobile No',
                                hintText: 'Mobile No',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: TextFormField(
                              controller: businessnameController ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.firmName,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Business Name',
                                hintText: 'Bussiness Name',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(
                                  Icons.business,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: TextFormField(
                              controller: businessaddressController ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.address,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Business Address',
                                hintText: 'Business Address',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(
                                  Icons.edit_road,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'Grocery',
                                'Garments',
                                'Medical',
                                'Resturant',
                                'IT Shop',
                                'IT Services',
                                'Education',
                                'Cake Shop',
                                'Footware',
                                'Mobile Shop',
                                'Mobile Repair',
                                'Fruit Shop',
                                'Dairy Products',
                                'Household',
                                'Electrical',
                                'Electronics',
                                'Hospital',
                                'Stationary',
                                'Motor Parts',
                                'Automobile',
                                'Departmental',
                                'Unisex Salon',
                                'Beauty Parlor',
                                'Hardware',
                                'Sweat Shop',
                                'Garage',
                                'Home Appliance',
                                'Repairing',
                                'Printing Press',
                                'Tour Travels',
                                'Pathology'
                              ],
                              onChanged: (val) =>
                                  setState(() => businesstypeValue = val),
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.black,
                                  ),
                              icon: Icon(
                                Icons.style,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 15,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryBlack,
                              borderWidth: 1,
                              borderRadius: 8,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                              hidesUnderline: true,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: TextFormField(
                              controller: storeAreaController ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.storeArea,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Shop Area (In Sq feet)',
                                hintText: 'Shop Area (In Sq feet)',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(
                                  Icons.border_color,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: FlutterFlowDropDown(
                        initialOption: areaValue ??=
                            editProfileUsersRecord.area,
                        options: [
                          'Gol Building - Bhuiphore mandir',
                          'Gol Building - Big Bazaar',
                          'Big Bazaar - Steel Gate',
                          'Steel Gate - Thana More',
                          'Karmik Nagar',
                          'Koyla Nagar',
                          'Kusum Vihar',
                          'Baliapur',
                          'Hirak Rd',
                          'Other'
                        ],
                        onChanged: (val) => setState(() => areaValue = val),
                        width: MediaQuery.of(context).size.width,
                        height: 53,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.black,
                                ),
                        hintText: 'Select Area',
                        icon: Icon(
                          Icons.home,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 15,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).primaryBlack,
                        borderWidth: 1,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                        hidesUnderline: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: FlutterFlowDropDown(
                        initialOption: dropDownValue ??=
                            editProfileUsersRecord.storeType,
                        options: ['Retailer', 'Wholesaler'],
                        onChanged: (val) => setState(() => dropDownValue = val),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.black,
                                ),
                        hintText: 'Store Type',
                        fillColor: Colors.white,
                        elevation: 0,
                        borderColor: FlutterFlowTheme.of(context).primaryBlack,
                        borderWidth: 1,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
