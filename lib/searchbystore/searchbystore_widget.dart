import '../backend/api_requests/api_calls.dart';
import '../components/storedetail_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchbystoreWidget extends StatefulWidget {
  const SearchbystoreWidget({Key? key}) : super(key: key);

  @override
  _SearchbystoreWidgetState createState() => _SearchbystoreWidgetState();
}

class _SearchbystoreWidgetState extends State<SearchbystoreWidget> {
  ApiCallResponse? search;
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
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBlack,
        automaticallyImplyLeading: true,
        title: Text(
          'Search ',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).white,
                fontSize: 16,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFCDD2),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 10, 0),
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Type to Search',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                buttonSize: 48,
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  search = await SearchCall.call(
                                    stype: 'Search',
                                    text: textController!.text,
                                  );

                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final userslist = getJsonField(
                      (search?.jsonBody ?? ''),
                      r'''$''',
                    ).toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: userslist.length,
                      itemBuilder: (context, userslistIndex) {
                        final userslistItem = userslist[userslistIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: Container(
                                      height: 410,
                                      child: StoredetailWidget(
                                        storeid: userslistItem,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: ListTile(
                              title: Text(
                                getJsonField(
                                  userslistItem,
                                  r'''$..buss_name''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                    ),
                              ),
                              subtitle: Text(
                                getJsonField(
                                  userslistItem,
                                  r'''$..phone_no''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20,
                              ),
                              tileColor: FlutterFlowTheme.of(context).grayBG,
                              dense: false,
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
      ),
    );
  }
}
