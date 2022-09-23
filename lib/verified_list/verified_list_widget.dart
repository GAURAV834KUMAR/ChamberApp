import '../adminpage/adminpage_widget.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../update_store_details/update_store_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifiedListWidget extends StatefulWidget {
  const VerifiedListWidget({Key? key}) : super(key: key);

  @override
  _VerifiedListWidgetState createState() => _VerifiedListWidgetState();
}

class _VerifiedListWidgetState extends State<VerifiedListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
                child: AdminpageWidget(),
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
          'Verified Persons',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).grayBG,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
            child: StreamBuilder<List<UsersRecord>>(
              stream: queryUsersRecord(
                queryBuilder: (usersRecord) => usersRecord
                    .where('is_verify', isEqualTo: 'Done')
                    .orderBy('created_time', descending: true),
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
                List<UsersRecord> listViewUsersRecordList = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewUsersRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewUsersRecord =
                        listViewUsersRecordList[listViewIndex];
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: UpdateStoreDetailsWidget(
                                uid: listViewUsersRecord,
                              ),
                            ),
                          );
                        },
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Delete',
                              color: Colors.red,
                              icon: Icons.delete,
                              onTap: () async {
                                await listViewUsersRecord.reference.delete();
                              },
                            ),
                          ],
                          child: ListTile(
                            title: Text(
                              listViewUsersRecord.firmName!,
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFFEF300A),
                                        fontWeight: FontWeight.w500,
                                      ),
                            ),
                            subtitle: Text(
                              listViewUsersRecord.businessType!,
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBlack,
                                  ),
                            ),
                            trailing: Icon(
                              Icons.check_circle_sharp,
                              color: Color(0xFF04EA04),
                              size: 25,
                            ),
                            tileColor: FlutterFlowTheme.of(context).white,
                            dense: false,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
