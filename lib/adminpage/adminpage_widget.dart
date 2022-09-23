import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../myposts/myposts_widget.dart';
import '../store_details/store_details_widget.dart';
import '../store_details_before_verify/store_details_before_verify_widget.dart';
import '../verified_list/verified_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminpageWidget extends StatefulWidget {
  const AdminpageWidget({Key? key}) : super(key: key);

  @override
  _AdminpageWidgetState createState() => _AdminpageWidgetState();
}

class _AdminpageWidgetState extends State<AdminpageWidget> {
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
                child: NavBarPage(initialPage: 'MyProfile'),
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
          'Admin Page',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: MypostsWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.message,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).grayBG,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 300),
              reverseDuration: Duration(milliseconds: 300),
              child: VerifiedListWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.person,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.of(context).primaryBlack,
                labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      fontSize: 15,
                    ),
                indicatorColor: FlutterFlowTheme.of(context).secondaryColor,
                tabs: [
                  Tab(
                    text: 'New Users',
                  ),
                  Tab(
                    text: 'Payment Pending',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
                          queryBuilder: (usersRecord) => usersRecord
                              .where('is_verify', isEqualTo: 'Not Done')
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<UsersRecord> listViewUsersRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewUsersRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewUsersRecord =
                                  listViewUsersRecordList[listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: StoreDetailsBeforeVerifyWidget(
                                          uid: listViewUsersRecord,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Slidable(
                                    actionPane:
                                        const SlidableScrollActionPane(),
                                    secondaryActions: [
                                      IconSlideAction(
                                        caption: 'Delete',
                                        color: Colors.red,
                                        icon: Icons.delete,
                                        onTap: () async {
                                          await listViewUsersRecord.reference
                                              .delete();
                                        },
                                      ),
                                    ],
                                    child: ListTile(
                                      title: Text(
                                        listViewUsersRecord.firmName!,
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBlack,
                                            ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF303030),
                                        size: 20,
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).white,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
                          queryBuilder: (usersRecord) => usersRecord
                              .where('is_verify', isEqualTo: 'Payment Pending')
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<UsersRecord> listViewUsersRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewUsersRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewUsersRecord =
                                  listViewUsersRecordList[listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: StoreDetailsWidget(
                                          uid: listViewUsersRecord,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Slidable(
                                    actionPane:
                                        const SlidableScrollActionPane(),
                                    secondaryActions: [
                                      IconSlideAction(
                                        caption: 'Delete',
                                        color: Colors.red,
                                        icon: Icons.delete,
                                        onTap: () async {
                                          await listViewUsersRecord.reference
                                              .delete();
                                        },
                                      ),
                                    ],
                                    child: ListTile(
                                      title: Text(
                                        listViewUsersRecord.firmName!,
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBlack,
                                            ),
                                      ),
                                      trailing: Icon(
                                        Icons.error_rounded,
                                        color: Color(0xFFFF5349),
                                        size: 26,
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).white,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
