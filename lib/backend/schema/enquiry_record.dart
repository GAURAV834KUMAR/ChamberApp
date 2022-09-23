import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'enquiry_record.g.dart';

abstract class EnquiryRecord
    implements Built<EnquiryRecord, EnquiryRecordBuilder> {
  static Serializer<EnquiryRecord> get serializer => _$enquiryRecordSerializer;

  @BuiltValueField(wireName: 'enquiry_owner')
  DocumentReference? get enquiryOwner;

  @BuiltValueField(wireName: 'enquiry_text')
  String? get enquiryText;

  @BuiltValueField(wireName: 'enquiry_created')
  DateTime? get enquiryCreated;

  BuiltList<DocumentReference>? get responds;

  @BuiltValueField(wireName: 'enq_name')
  String? get enqName;

  @BuiltValueField(wireName: 'enq_phone')
  String? get enqPhone;

  @BuiltValueField(wireName: 'enquiry_type')
  String? get enquiryType;

  @BuiltValueField(wireName: 'enquiry_id')
  int? get enquiryId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EnquiryRecordBuilder builder) => builder
    ..enquiryText = ''
    ..responds = ListBuilder()
    ..enqName = ''
    ..enqPhone = ''
    ..enquiryType = ''
    ..enquiryId = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enquiry');

  static Stream<EnquiryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EnquiryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EnquiryRecord._();
  factory EnquiryRecord([void Function(EnquiryRecordBuilder) updates]) =
      _$EnquiryRecord;

  static EnquiryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEnquiryRecordData({
  DocumentReference? enquiryOwner,
  String? enquiryText,
  DateTime? enquiryCreated,
  String? enqName,
  String? enqPhone,
  String? enquiryType,
  int? enquiryId,
}) {
  final firestoreData = serializers.toFirestore(
    EnquiryRecord.serializer,
    EnquiryRecord(
      (e) => e
        ..enquiryOwner = enquiryOwner
        ..enquiryText = enquiryText
        ..enquiryCreated = enquiryCreated
        ..responds = null
        ..enqName = enqName
        ..enqPhone = enqPhone
        ..enquiryType = enquiryType
        ..enquiryId = enquiryId,
    ),
  );

  return firestoreData;
}
