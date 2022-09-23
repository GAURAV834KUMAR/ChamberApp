import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bussiness_type_record.g.dart';

abstract class BussinessTypeRecord
    implements Built<BussinessTypeRecord, BussinessTypeRecordBuilder> {
  static Serializer<BussinessTypeRecord> get serializer =>
      _$bussinessTypeRecordSerializer;

  @BuiltValueField(wireName: 'type_name')
  String? get typeName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BussinessTypeRecordBuilder builder) =>
      builder..typeName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bussiness_type');

  static Stream<BussinessTypeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BussinessTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BussinessTypeRecord._();
  factory BussinessTypeRecord(
          [void Function(BussinessTypeRecordBuilder) updates]) =
      _$BussinessTypeRecord;

  static BussinessTypeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBussinessTypeRecordData({
  String? typeName,
}) {
  final firestoreData = serializers.toFirestore(
    BussinessTypeRecord.serializer,
    BussinessTypeRecord(
      (b) => b..typeName = typeName,
    ),
  );

  return firestoreData;
}
