import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'payment_screenshots_record.g.dart';

abstract class PaymentScreenshotsRecord
    implements
        Built<PaymentScreenshotsRecord, PaymentScreenshotsRecordBuilder> {
  static Serializer<PaymentScreenshotsRecord> get serializer =>
      _$paymentScreenshotsRecordSerializer;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'Notes')
  String? get notes;

  @BuiltValueField(wireName: 'Created_Time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'User_id')
  DocumentReference? get userId;

  @BuiltValueField(wireName: 'Verified')
  bool? get verified;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PaymentScreenshotsRecordBuilder builder) =>
      builder
        ..image = ''
        ..notes = ''
        ..verified = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Payment_Screenshots');

  static Stream<PaymentScreenshotsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PaymentScreenshotsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PaymentScreenshotsRecord._();
  factory PaymentScreenshotsRecord(
          [void Function(PaymentScreenshotsRecordBuilder) updates]) =
      _$PaymentScreenshotsRecord;

  static PaymentScreenshotsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPaymentScreenshotsRecordData({
  String? image,
  String? notes,
  DateTime? createdTime,
  DocumentReference? userId,
  bool? verified,
}) {
  final firestoreData = serializers.toFirestore(
    PaymentScreenshotsRecord.serializer,
    PaymentScreenshotsRecord(
      (p) => p
        ..image = image
        ..notes = notes
        ..createdTime = createdTime
        ..userId = userId
        ..verified = verified,
    ),
  );

  return firestoreData;
}
