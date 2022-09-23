import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnquiryownerWidget extends StatefulWidget {
  const EnquiryownerWidget({
    Key? key,
    this.cid,
  }) : super(key: key);

  final dynamic cid;

  @override
  _EnquiryownerWidgetState createState() => _EnquiryownerWidgetState();
}

class _EnquiryownerWidgetState extends State<EnquiryownerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 0,
              color: Color(0xFFDBE2E7),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/495/600',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: StreamBuilder<List<UsersRecord>>(
                  stream: queryUsersRecord(
                    queryBuilder: (usersRecord) => usersRecord.where('User_Id',
                        isEqualTo: getJsonField(
                          widget.cid,
                          r'''$..buss_ref_id''',
                        )),
                    singleRecord: true,
                  ),
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
                    List<UsersRecord> columnUsersRecordList = snapshot.data!;
                    // Return an empty Container when the document does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final columnUsersRecord = columnUsersRecordList.isNotEmpty
                        ? columnUsersRecordList.first
                        : null;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          columnUsersRecord!.firmName!,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Text(
                            columnUsersRecord!.phoneNumber!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
