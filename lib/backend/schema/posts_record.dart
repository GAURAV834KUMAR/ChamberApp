import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  @BuiltValueField(wireName: 'post_owner')
  DocumentReference? get postOwner;

  @BuiltValueField(wireName: 'post_picture')
  String? get postPicture;

  @BuiltValueField(wireName: 'post_date')
  DateTime? get postDate;

  @BuiltValueField(wireName: 'like_by')
  BuiltList<DocumentReference>? get likeBy;

  @BuiltValueField(wireName: 'post_text')
  String? get postText;

  @BuiltValueField(wireName: 'creator_name')
  String? get creatorName;

  @BuiltValueField(wireName: 'Post_Id')
  int? get postId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..postPicture = ''
    ..likeBy = ListBuilder()
    ..postText = ''
    ..creatorName = ''
    ..postId = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostsRecordData({
  DocumentReference? postOwner,
  String? postPicture,
  DateTime? postDate,
  String? postText,
  String? creatorName,
  int? postId,
}) {
  final firestoreData = serializers.toFirestore(
    PostsRecord.serializer,
    PostsRecord(
      (p) => p
        ..postOwner = postOwner
        ..postPicture = postPicture
        ..postDate = postDate
        ..likeBy = null
        ..postText = postText
        ..creatorName = creatorName
        ..postId = postId,
    ),
  );

  return firestoreData;
}
