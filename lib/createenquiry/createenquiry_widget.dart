import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../myenquiry/myenquiry_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateenquiryWidget extends StatefulWidget {
  const CreateenquiryWidget({Key? key}) : super(key: key);

  @override
  _CreateenquiryWidgetState createState() => _CreateenquiryWidgetState();
}

class _CreateenquiryWidgetState extends State<CreateenquiryWidget> {
  ApiCallResponse? enquiry;
  ApiCallResponse? id;
  String? enquirytypeValue;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
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
        final createenquiryUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: MyenquiryWidget(),
                  ),
                  (r) => false,
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).white,
                size: 24,
              ),
            ),
            title: Text(
              'Create Enquiry',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.of(context).white,
          body: SafeArea(
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Type your Enquiry.....',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
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
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      textAlign: TextAlign.start,
                      maxLines: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
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
                        'Sweet Shop',
                        'Garage',
                        'Home Appliances',
                        'Repairing',
                        'Printing Press',
                        'Tour Travels',
                        'Pathology',
                        'Jewellery',
                        'Other'
                      ],
                      onChanged: (val) =>
                          setState(() => enquirytypeValue = val),
                      width: MediaQuery.of(context).size.width,
                      height: 53,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryBlack,
                          ),
                      hintText: 'Select Type',
                      icon: Icon(
                        Icons.style,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 15,
                      ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: FlutterFlowTheme.of(context).primaryColor,
                      borderWidth: 1,
                      borderRadius: 8,
                      margin: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                      hidesUnderline: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        enquiry = await CreateEnquiryCall.call(
                          stype: 'Create',
                          bussRefId: createenquiryUsersRecord.userId,
                          eqText: textController!.text,
                          eqType: enquirytypeValue,
                        );
                        id = await EnquiryIdCall.call(
                          stype: 'id',
                          eqText: textController!.text,
                        );

                        final enquiryCreateData = createEnquiryRecordData(
                          enquiryOwner: currentUserReference,
                          enquiryText: textController!.text,
                          enquiryCreated: getCurrentTimestamp,
                          enqName:
                              valueOrDefault(currentUserDocument?.firmName, ''),
                          enqPhone: currentPhoneNumber,
                          enquiryType: enquirytypeValue,
                          enquiryId: getJsonField(
                            (id?.jsonBody ?? ''),
                            r'''$..eq_id''',
                          ),
                        );
                        await EnquiryRecord.collection
                            .doc()
                            .set(enquiryCreateData);
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 3),
                            reverseDuration: Duration(milliseconds: 3),
                            child: MyenquiryWidget(),
                          ),
                          (r) => false,
                        );

                        setState(() {});
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        width: 360,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
