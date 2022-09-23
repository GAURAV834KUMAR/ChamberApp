import '../adminpage/adminpage_widget.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyWidget extends StatefulWidget {
  const VerifyWidget({
    Key? key,
    this.verifyid,
  }) : super(key: key);

  final dynamic verifyid;

  @override
  _VerifyWidgetState createState() => _VerifyWidgetState();
}

class _VerifyWidgetState extends State<VerifyWidget> {
  String? businesstypeValue;
  TextEditingController? registerNoController;
  String? dropDownValue;

  @override
  void initState() {
    super.initState();
    registerNoController = TextEditingController(
        text: getJsonField(
      widget.verifyid,
      r'''$..reg_no''',
    ).toString());
  }

  @override
  void dispose() {
    registerNoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryBlack,
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Mark Verified',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xD60000FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.75, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).primaryBlack,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
            child: TextFormField(
              controller: registerNoController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Register No',
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
                filled: true,
                fillColor: FlutterFlowTheme.of(context).white,
                prefixIcon: Icon(
                  Icons.keyboard_rounded,
                  color: FlutterFlowTheme.of(context).primaryBlack,
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
            child: FlutterFlowDropDown(
              initialOption: businesstypeValue ??= getJsonField(
                widget.verifyid,
                r'''$..type''',
              ).toString(),
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
                'Home Appliances',
                'Repairing',
                'Printing Press',
                'Tour Travels',
                'Pathology'
              ],
              onChanged: (val) => setState(() => businesstypeValue = val),
              width: MediaQuery.of(context).size.width,
              height: 53,
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.black,
                  ),
              hintText: 'Select Type',
              icon: Icon(
                Icons.style,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 15,
              ),
              fillColor: Colors.white,
              elevation: 0,
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
              options: ['True', 'False'],
              onChanged: (val) => setState(() => dropDownValue = val),
              width: MediaQuery.of(context).size.width,
              height: 55,
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.black,
                  ),
              hintText: 'Admin',
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
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                await VerifiedCall.call(
                  stype: 'Verify',
                  id: getJsonField(
                    widget.verifyid,
                    r'''$..id''',
                  ),
                  regNo: registerNoController!.text,
                  type: businesstypeValue,
                  verify: 'Done',
                  admin: dropDownValue,
                );
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: AdminpageWidget(),
                  ),
                  (r) => false,
                );
              },
              text: 'Verify',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xD10000FF),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 18,
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
    );
  }
}
