import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenshotDetailsWidget extends StatefulWidget {
  const ScreenshotDetailsWidget({
    Key? key,
    this.payid,
  }) : super(key: key);

  final PaymentScreenshotsRecord? payid;

  @override
  _ScreenshotDetailsWidgetState createState() =>
      _ScreenshotDetailsWidgetState();
}

class _ScreenshotDetailsWidgetState extends State<ScreenshotDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.payid!.image!,
                  width: MediaQuery.of(context).size.width * 3.5,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Text(
                      dateTimeFormat('yMMMd', widget.payid!.createdTime!),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF3F51B5),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1, 0),
                    child: StreamBuilder<PaymentScreenshotsRecord>(
                      stream: PaymentScreenshotsRecord.getDocument(
                          widget.payid!.reference),
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
                        final toggleIconPaymentScreenshotsRecord =
                            snapshot.data!;
                        return ToggleIcon(
                          onPressed: () async {
                            final paymentScreenshotsUpdateData = {
                              'Verified':
                                  !toggleIconPaymentScreenshotsRecord.verified!,
                            };
                            await toggleIconPaymentScreenshotsRecord.reference
                                .update(paymentScreenshotsUpdateData);
                          },
                          value: toggleIconPaymentScreenshotsRecord.verified!,
                          onIcon: FaIcon(
                            FontAwesomeIcons.solidThumbsUp,
                            color: Color(0xFF122CDD),
                            size: 25,
                          ),
                          offIcon: FaIcon(
                            FontAwesomeIcons.thumbsUp,
                            color: Color(0xFF131619),
                            size: 25,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, -1),
                    child: AutoSizeText(
                      widget.payid!.notes!,
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 16,
                            lineHeight: 1.5,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
