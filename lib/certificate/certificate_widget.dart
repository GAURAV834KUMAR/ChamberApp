import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share_plus/share_plus.dart';

class CertificateWidget extends StatefulWidget {
  const CertificateWidget({Key? key}) : super(key: key);

  @override
  _CertificateWidgetState createState() => _CertificateWidgetState();
}

class _CertificateWidgetState extends State<CertificateWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Certification & ID',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: InkWell(
          onTap: () async {
            await Share.share('');
          },
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.05),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: FlutterFlowExpandedImageView(
                          image: Image.asset(
                            'assets/images/saraidhela_chamber-min.jpg',
                            fit: BoxFit.contain,
                          ),
                          allowRotation: false,
                          tag: 'imageTag',
                          useHeroAnimation: true,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'imageTag',
                    transitionOnUserGestures: true,
                    child: Image.asset(
                      'assets/images/saraidhela_chamber-min.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.67, -0.35),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: AuthUserStreamWidget(
                    child: Text(
                      valueOrDefault(currentUserDocument?.regNo, ''),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFEF300A),
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.15, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: AuthUserStreamWidget(
                    child: Text(
                      valueOrDefault(currentUserDocument?.address, ''),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFEF300A),
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.65, 0.11),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    '2022-23',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFFEF300A),
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.13, -0.02),
                child: AuthUserStreamWidget(
                  child: Text(
                    valueOrDefault(currentUserDocument?.firmName, ''),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFFEF300A),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
