import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDetailWidget extends StatefulWidget {
  const PostDetailWidget({
    Key? key,
    this.postid,
  }) : super(key: key);

  final DocumentReference? postid;

  @override
  _PostDetailWidgetState createState() => _PostDetailWidgetState();
}

class _PostDetailWidgetState extends State<PostDetailWidget> {
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
        child: StreamBuilder<PostsRecord>(
          stream: PostsRecord.getDocument(widget.postid!),
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
            final columnPostsRecord = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      columnPostsRecord.postPicture!,
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
                          columnPostsRecord.creatorName!,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
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
                        child: ToggleIcon(
                          onPressed: () async {
                            final likeByElement = columnPostsRecord.reference;
                            final likeByUpdate = columnPostsRecord.likeBy!
                                    .toList()
                                    .contains(likeByElement)
                                ? FieldValue.arrayRemove([likeByElement])
                                : FieldValue.arrayUnion([likeByElement]);
                            final postsUpdateData = {
                              'like_by': likeByUpdate,
                            };
                            await columnPostsRecord.reference
                                .update(postsUpdateData);
                          },
                          value: columnPostsRecord.likeBy!
                              .toList()
                              .contains(columnPostsRecord.reference),
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
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-0.95, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                          child: Text(
                            dateTimeFormat(
                                'MMMMEEEEd', columnPostsRecord.postDate!),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.green,
                                      fontSize: 16,
                                    ),
                          ),
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
                        alignment: AlignmentDirectional(-0.8, -0.85),
                        child: AutoSizeText(
                          columnPostsRecord.postText!,
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
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
            );
          },
        ),
      ),
    );
  }
}
