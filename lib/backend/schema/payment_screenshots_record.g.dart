// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_screenshots_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentScreenshotsRecord> _$paymentScreenshotsRecordSerializer =
    new _$PaymentScreenshotsRecordSerializer();

class _$PaymentScreenshotsRecordSerializer
    implements StructuredSerializer<PaymentScreenshotsRecord> {
  @override
  final Iterable<Type> types = const [
    PaymentScreenshotsRecord,
    _$PaymentScreenshotsRecord
  ];
  @override
  final String wireName = 'PaymentScreenshotsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PaymentScreenshotsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('Notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('Created_Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('User_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.verified;
    if (value != null) {
      result
        ..add('Verified')
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
  PaymentScreenshotsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentScreenshotsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Created_Time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'User_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Verified':
          result.verified = serializers.deserialize(value,
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

class _$PaymentScreenshotsRecord extends PaymentScreenshotsRecord {
  @override
  final String? image;
  @override
  final String? notes;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final bool? verified;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PaymentScreenshotsRecord(
          [void Function(PaymentScreenshotsRecordBuilder)? updates]) =>
      (new PaymentScreenshotsRecordBuilder()..update(updates))._build();

  _$PaymentScreenshotsRecord._(
      {this.image,
      this.notes,
      this.createdTime,
      this.userId,
      this.verified,
      this.ffRef})
      : super._();

  @override
  PaymentScreenshotsRecord rebuild(
          void Function(PaymentScreenshotsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentScreenshotsRecordBuilder toBuilder() =>
      new PaymentScreenshotsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentScreenshotsRecord &&
        image == other.image &&
        notes == other.notes &&
        createdTime == other.createdTime &&
        userId == other.userId &&
        verified == other.verified &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, image.hashCode), notes.hashCode),
                    createdTime.hashCode),
                userId.hashCode),
            verified.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentScreenshotsRecord')
          ..add('image', image)
          ..add('notes', notes)
          ..add('createdTime', createdTime)
          ..add('userId', userId)
          ..add('verified', verified)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PaymentScreenshotsRecordBuilder
    implements
        Builder<PaymentScreenshotsRecord, PaymentScreenshotsRecordBuilder> {
  _$PaymentScreenshotsRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  bool? _verified;
  bool? get verified => _$this._verified;
  set verified(bool? verified) => _$this._verified = verified;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PaymentScreenshotsRecordBuilder() {
    PaymentScreenshotsRecord._initializeBuilder(this);
  }

  PaymentScreenshotsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _notes = $v.notes;
      _createdTime = $v.createdTime;
      _userId = $v.userId;
      _verified = $v.verified;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentScreenshotsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentScreenshotsRecord;
  }

  @override
  void update(void Function(PaymentScreenshotsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentScreenshotsRecord build() => _build();

  _$PaymentScreenshotsRecord _build() {
    final _$result = _$v ??
        new _$PaymentScreenshotsRecord._(
            image: image,
            notes: notes,
            createdTime: createdTime,
            userId: userId,
            verified: verified,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
