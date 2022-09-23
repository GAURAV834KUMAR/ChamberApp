// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enquiry_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnquiryRecord> _$enquiryRecordSerializer =
    new _$EnquiryRecordSerializer();

class _$EnquiryRecordSerializer implements StructuredSerializer<EnquiryRecord> {
  @override
  final Iterable<Type> types = const [EnquiryRecord, _$EnquiryRecord];
  @override
  final String wireName = 'EnquiryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnquiryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.enquiryOwner;
    if (value != null) {
      result
        ..add('enquiry_owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.enquiryText;
    if (value != null) {
      result
        ..add('enquiry_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enquiryCreated;
    if (value != null) {
      result
        ..add('enquiry_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.responds;
    if (value != null) {
      result
        ..add('responds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.enqName;
    if (value != null) {
      result
        ..add('enq_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enqPhone;
    if (value != null) {
      result
        ..add('enq_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enquiryType;
    if (value != null) {
      result
        ..add('enquiry_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enquiryId;
    if (value != null) {
      result
        ..add('enquiry_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  EnquiryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnquiryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'enquiry_owner':
          result.enquiryOwner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'enquiry_text':
          result.enquiryText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'enquiry_created':
          result.enquiryCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'responds':
          result.responds.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'enq_name':
          result.enqName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'enq_phone':
          result.enqPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'enquiry_type':
          result.enquiryType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'enquiry_id':
          result.enquiryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$EnquiryRecord extends EnquiryRecord {
  @override
  final DocumentReference<Object?>? enquiryOwner;
  @override
  final String? enquiryText;
  @override
  final DateTime? enquiryCreated;
  @override
  final BuiltList<DocumentReference<Object?>>? responds;
  @override
  final String? enqName;
  @override
  final String? enqPhone;
  @override
  final String? enquiryType;
  @override
  final int? enquiryId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EnquiryRecord([void Function(EnquiryRecordBuilder)? updates]) =>
      (new EnquiryRecordBuilder()..update(updates))._build();

  _$EnquiryRecord._(
      {this.enquiryOwner,
      this.enquiryText,
      this.enquiryCreated,
      this.responds,
      this.enqName,
      this.enqPhone,
      this.enquiryType,
      this.enquiryId,
      this.ffRef})
      : super._();

  @override
  EnquiryRecord rebuild(void Function(EnquiryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnquiryRecordBuilder toBuilder() => new EnquiryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnquiryRecord &&
        enquiryOwner == other.enquiryOwner &&
        enquiryText == other.enquiryText &&
        enquiryCreated == other.enquiryCreated &&
        responds == other.responds &&
        enqName == other.enqName &&
        enqPhone == other.enqPhone &&
        enquiryType == other.enquiryType &&
        enquiryId == other.enquiryId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, enquiryOwner.hashCode),
                                    enquiryText.hashCode),
                                enquiryCreated.hashCode),
                            responds.hashCode),
                        enqName.hashCode),
                    enqPhone.hashCode),
                enquiryType.hashCode),
            enquiryId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnquiryRecord')
          ..add('enquiryOwner', enquiryOwner)
          ..add('enquiryText', enquiryText)
          ..add('enquiryCreated', enquiryCreated)
          ..add('responds', responds)
          ..add('enqName', enqName)
          ..add('enqPhone', enqPhone)
          ..add('enquiryType', enquiryType)
          ..add('enquiryId', enquiryId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EnquiryRecordBuilder
    implements Builder<EnquiryRecord, EnquiryRecordBuilder> {
  _$EnquiryRecord? _$v;

  DocumentReference<Object?>? _enquiryOwner;
  DocumentReference<Object?>? get enquiryOwner => _$this._enquiryOwner;
  set enquiryOwner(DocumentReference<Object?>? enquiryOwner) =>
      _$this._enquiryOwner = enquiryOwner;

  String? _enquiryText;
  String? get enquiryText => _$this._enquiryText;
  set enquiryText(String? enquiryText) => _$this._enquiryText = enquiryText;

  DateTime? _enquiryCreated;
  DateTime? get enquiryCreated => _$this._enquiryCreated;
  set enquiryCreated(DateTime? enquiryCreated) =>
      _$this._enquiryCreated = enquiryCreated;

  ListBuilder<DocumentReference<Object?>>? _responds;
  ListBuilder<DocumentReference<Object?>> get responds =>
      _$this._responds ??= new ListBuilder<DocumentReference<Object?>>();
  set responds(ListBuilder<DocumentReference<Object?>>? responds) =>
      _$this._responds = responds;

  String? _enqName;
  String? get enqName => _$this._enqName;
  set enqName(String? enqName) => _$this._enqName = enqName;

  String? _enqPhone;
  String? get enqPhone => _$this._enqPhone;
  set enqPhone(String? enqPhone) => _$this._enqPhone = enqPhone;

  String? _enquiryType;
  String? get enquiryType => _$this._enquiryType;
  set enquiryType(String? enquiryType) => _$this._enquiryType = enquiryType;

  int? _enquiryId;
  int? get enquiryId => _$this._enquiryId;
  set enquiryId(int? enquiryId) => _$this._enquiryId = enquiryId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EnquiryRecordBuilder() {
    EnquiryRecord._initializeBuilder(this);
  }

  EnquiryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enquiryOwner = $v.enquiryOwner;
      _enquiryText = $v.enquiryText;
      _enquiryCreated = $v.enquiryCreated;
      _responds = $v.responds?.toBuilder();
      _enqName = $v.enqName;
      _enqPhone = $v.enqPhone;
      _enquiryType = $v.enquiryType;
      _enquiryId = $v.enquiryId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnquiryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnquiryRecord;
  }

  @override
  void update(void Function(EnquiryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnquiryRecord build() => _build();

  _$EnquiryRecord _build() {
    _$EnquiryRecord _$result;
    try {
      _$result = _$v ??
          new _$EnquiryRecord._(
              enquiryOwner: enquiryOwner,
              enquiryText: enquiryText,
              enquiryCreated: enquiryCreated,
              responds: _responds?.build(),
              enqName: enqName,
              enqPhone: enqPhone,
              enquiryType: enquiryType,
              enquiryId: enquiryId,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responds';
        _responds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnquiryRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
