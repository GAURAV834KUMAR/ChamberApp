// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentRecord> _$paymentRecordSerializer =
    new _$PaymentRecordSerializer();

class _$PaymentRecordSerializer implements StructuredSerializer<PaymentRecord> {
  @override
  final Iterable<Type> types = const [PaymentRecord, _$PaymentRecord];
  @override
  final String wireName = 'PaymentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.paymentId;
    if (value != null) {
      result
        ..add('Payment_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentTime;
    if (value != null) {
      result
        ..add('payment_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paymentAmount;
    if (value != null) {
      result
        ..add('Payment_Amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.isSucess;
    if (value != null) {
      result
        ..add('Is_Sucess')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PaymentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Payment_id':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payment_time':
          result.paymentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Payment_Amount':
          result.paymentAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Is_Sucess':
          result.isSucess = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentRecord extends PaymentRecord {
  @override
  final String? paymentId;
  @override
  final DateTime? paymentTime;
  @override
  final double? paymentAmount;
  @override
  final DocumentReference<Object?>? userid;
  @override
  final bool? isSucess;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PaymentRecord([void Function(PaymentRecordBuilder)? updates]) =>
      (new PaymentRecordBuilder()..update(updates))._build();

  _$PaymentRecord._(
      {this.paymentId,
      this.paymentTime,
      this.paymentAmount,
      this.userid,
      this.isSucess,
      this.ffRef})
      : super._();

  @override
  PaymentRecord rebuild(void Function(PaymentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentRecordBuilder toBuilder() => new PaymentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentRecord &&
        paymentId == other.paymentId &&
        paymentTime == other.paymentTime &&
        paymentAmount == other.paymentAmount &&
        userid == other.userid &&
        isSucess == other.isSucess &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, paymentId.hashCode), paymentTime.hashCode),
                    paymentAmount.hashCode),
                userid.hashCode),
            isSucess.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentRecord')
          ..add('paymentId', paymentId)
          ..add('paymentTime', paymentTime)
          ..add('paymentAmount', paymentAmount)
          ..add('userid', userid)
          ..add('isSucess', isSucess)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PaymentRecordBuilder
    implements Builder<PaymentRecord, PaymentRecordBuilder> {
  _$PaymentRecord? _$v;

  String? _paymentId;
  String? get paymentId => _$this._paymentId;
  set paymentId(String? paymentId) => _$this._paymentId = paymentId;

  DateTime? _paymentTime;
  DateTime? get paymentTime => _$this._paymentTime;
  set paymentTime(DateTime? paymentTime) => _$this._paymentTime = paymentTime;

  double? _paymentAmount;
  double? get paymentAmount => _$this._paymentAmount;
  set paymentAmount(double? paymentAmount) =>
      _$this._paymentAmount = paymentAmount;

  DocumentReference<Object?>? _userid;
  DocumentReference<Object?>? get userid => _$this._userid;
  set userid(DocumentReference<Object?>? userid) => _$this._userid = userid;

  bool? _isSucess;
  bool? get isSucess => _$this._isSucess;
  set isSucess(bool? isSucess) => _$this._isSucess = isSucess;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PaymentRecordBuilder() {
    PaymentRecord._initializeBuilder(this);
  }

  PaymentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentId = $v.paymentId;
      _paymentTime = $v.paymentTime;
      _paymentAmount = $v.paymentAmount;
      _userid = $v.userid;
      _isSucess = $v.isSucess;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentRecord;
  }

  @override
  void update(void Function(PaymentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentRecord build() => _build();

  _$PaymentRecord _build() {
    final _$result = _$v ??
        new _$PaymentRecord._(
            paymentId: paymentId,
            paymentTime: paymentTime,
            paymentAmount: paymentAmount,
            userid: userid,
            isSucess: isSucess,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
