import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'members_record.g.dart';

abstract class MembersRecord
    implements Built<MembersRecord, MembersRecordBuilder> {
  static Serializer<MembersRecord> get serializer => _$membersRecordSerializer;

  @BuiltValueField(wireName: 'member_name')
  String? get memberName;

  @BuiltValueField(wireName: 'member_post')
  String? get memberPost;

  @BuiltValueField(wireName: 'member_phone')
  String? get memberPhone;

  @BuiltValueField(wireName: 'member_photo')
  String? get memberPhoto;

  @BuiltValueField(wireName: 'display_order')
  int? get displayOrder;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MembersRecordBuilder builder) => builder
    ..memberName = ''
    ..memberPost = ''
    ..memberPhone = ''
    ..memberPhoto = ''
    ..displayOrder = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('members');

  static Stream<MembersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MembersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MembersRecord._();
  factory MembersRecord([void Function(MembersRecordBuilder) updates]) =
      _$MembersRecord;

  static MembersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMembersRecordData({
  String? memberName,
  String? memberPost,
  String? memberPhone,
  String? memberPhoto,
  int? displayOrder,
}) {
  final firestoreData = serializers.toFirestore(
    MembersRecord.serializer,
    MembersRecord(
      (m) => m
        ..memberName = memberName
        ..memberPost = memberPost
        ..memberPhone = memberPhone
        ..memberPhoto = memberPhoto
        ..displayOrder = displayOrder,
    ),
  );

  return firestoreData;
}
