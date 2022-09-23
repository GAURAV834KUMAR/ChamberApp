import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'payment_record.g.dart';

abstract class PaymentRecord
    implements Built<PaymentRecord, PaymentRecordBuilder> {
  static Serializer<PaymentRecord> get serializer => _$paymentRecordSerializer;

  @BuiltValueField(wireName: 'Payment_id')
  String? get paymentId;

  @BuiltValueField(wireName: 'payment_time')
  DateTime? get paymentTime;

  @BuiltValueField(wireName: 'Payment_Amount')
  double? get paymentAmount;

  DocumentReference? get userid;

  @BuiltValueField(wireName: 'Is_Sucess')
  bool? get isSucess;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PaymentRecordBuilder builder) => builder
    ..paymentId = ''
    ..paymentAmount = 0.0
    ..isSucess = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PaymentRecord._();
  factory PaymentRecord([void Function(PaymentRecordBuilder) updates]) =
      _$PaymentRecord;

  static PaymentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPaymentRecordData({
  String? paymentId,
  DateTime? paymentTime,
  double? paymentAmount,
  DocumentReference? userid,
  bool? isSucess,
}) {
  final firestoreData = serializers.toFirestore(
    PaymentRecord.serializer,
    PaymentRecord(
      (p) => p
        ..paymentId = paymentId
        ..paymentTime = paymentTime
        ..paymentAmount = paymentAmount
        ..userid = userid
        ..isSucess = isSucess,
    ),
  );

  return firestoreData;
}
