import '../backend/backend.dart';
import '../components/screenshot_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewScreenshotsWidget extends StatefulWidget {
  const ViewScreenshotsWidget({
    Key? key,
    this.uid,
  }) : super(key: key);

  final DocumentReference? uid;

  @override
  _ViewScreenshotsWidgetState createState() => _ViewScreenshotsWidgetState();
}

class _ViewScreenshotsWidgetState extends State<ViewScreenshotsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryBlack,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Screenshot\'s',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).primaryBlack,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: StreamBuilder<List<PaymentScreenshotsRecord>>(
                  stream: queryPaymentScreenshotsRecord(
                    queryBuilder: (paymentScreenshotsRecord) =>
                        paymentScreenshotsRecord
                            .where('User_id', isEqualTo: widget.uid)
                            .orderBy('Created_Time', descending: true),
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
                    List<PaymentScreenshotsRecord>
                        listViewPaymentScreenshotsRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewPaymentScreenshotsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewPaymentScreenshotsRecord =
                            listViewPaymentScreenshotsRecordList[listViewIndex];
                        return Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).white,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.5,
                                          child: ScreenshotDetailsWidget(
                                            payid:
                                                listViewPaymentScreenshotsRecord,
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Image.network(
                                  valueOrDefault<String>(
                                    listViewPaymentScreenshotsRecord.image,
                                    'https://img.freepik.com/free-vector/image-upload-concept-illustration_114360-798.jpg?w=740&t=st=1653624426~exp=1653625026~hmac=e10a5b45f42df97d2861f460babd0c4b624db5228e52ee2c780849f9f3a8852a',
                                  ),
                                  width: 400,
                                  height: 400,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.98, -1.01),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0x3A000000),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    buttonSize: 46,
                                    icon: Icon(
                                      Icons.delete,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 24,
                                    ),
                                    onPressed: () async {
                                      await listViewPaymentScreenshotsRecord
                                          .reference
                                          .delete();
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
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
