import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  String? areaValue;
  TextEditingController? businessaddressController;
  TextEditingController? businessnameController;
  TextEditingController? contactpersonController;
  TextEditingController? mobilenoController;
  TextEditingController? registerNoController;
  TextEditingController? sqFeetController;
  String? businesstypeValue;
  String? dropDownValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    businessaddressController = TextEditingController();
    businessnameController = TextEditingController();
    contactpersonController = TextEditingController();
    mobilenoController = TextEditingController(
        text: functions.mobileformate(FFAppState().phoneno));
    registerNoController = TextEditingController();
    sqFeetController = TextEditingController();
  }

  @override
  void dispose() {
    businessaddressController?.dispose();
    businessnameController?.dispose();
    contactpersonController?.dispose();
    mobilenoController?.dispose();
    registerNoController?.dispose();
    sqFeetController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBlack,
        automaticallyImplyLeading: true,
        title: Text(
          'Register Your Business',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).white,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Align(
              alignment: AlignmentDirectional(0, -1),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: TextFormField(
                        controller: contactpersonController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Contact Person Name',
                          hintText: 'Contact Person Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: TextFormField(
                        controller: mobilenoController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Mobile No',
                          hintText: 'Mobile No',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please Enter Your Phone No.....';
                          }

                          if (val.length < 10) {
                            return 'Please Enter The 10 Digit No.';
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: TextFormField(
                        controller: businessnameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Business Name',
                          hintText: 'Bussiness Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please Enter Your Business Name';
                          }

                          if (val.length < 10) {
                            return 'Please Enter Your Business Name';
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: TextFormField(
                        controller: businessaddressController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Business Address',
                          hintText: 'Business Address',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please Enter Your Business Adress';
                          }

                          if (val.length < 10) {
                            return 'Please Enter Your Business Adress';
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: FlutterFlowDropDown(
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
                      child: TextFormField(
                        controller: registerNoController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Certificate No (Only From 2020-2021)',
                          hintText: 'Certificate No(Only From 2020-2021)',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
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
                            Icons.keyboard_rounded,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: TextFormField(
                        controller: sqFeetController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter The Shop Area ( In Sq Feet)',
                          hintText: 'Enter The Shop Area ( In Sq Feet)',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryBlack,
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please Fill Your Shop Area...';
                          }

                          if (val.length < 2) {
                            return 'Please Fill Your Shop Area...';
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
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
                            setState(() => businesstypeValue = val),
                        width: MediaQuery.of(context).size.width,
                        height: 53,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.black,
                                ),
                        hintText: 'Select Bussiness Type',
                        icon: Icon(
                          Icons.style,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (formKey.currentState == null ||
                              !formKey.currentState!.validate()) {
                            return;
                          }

                          if (areaValue == null) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Not Filled'),
                                  content: Text('Please Select Your Area'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            return;
                          }
                          if (businesstypeValue == null) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Not Selected'),
                                  content: Text(
                                      'Your Business Type Is Not Selected'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            return;
                          }
                          if (dropDownValue == null) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Not Selected'),
                                  content:
                                      Text('Your Store Type Is Not Selected'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            return;
                          }

                          final usersUpdateData = createUsersRecordData(
                            displayName: contactpersonController!.text,
                            phoneNumber: mobilenoController!.text,
                            firmName: businessnameController!.text,
                            address: businessaddressController!.text,
                            area: areaValue,
                            regNo: registerNoController!.text,
                            storeArea: sqFeetController!.text,
                            businessType: businesstypeValue,
                            storeType: dropDownValue,
                            isVerify: 'Not Done',
                            uid: '',
                            admin: 'False',
                          );
                          await currentUserReference!.update(usersUpdateData);
                          await Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: NavBarPage(initialPage: 'Homepage'),
                            ),
                            (r) => false,
                          );
                        },
                        text: 'Register',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryBlack,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
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
          ),
        ),
      ),
    );
  }
}
