// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bussiness_type_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BussinessTypeRecord> _$bussinessTypeRecordSerializer =
    new _$BussinessTypeRecordSerializer();

class _$BussinessTypeRecordSerializer
    implements StructuredSerializer<BussinessTypeRecord> {
  @override
  final Iterable<Type> types = const [
    BussinessTypeRecord,
    _$BussinessTypeRecord
  ];
  @override
  final String wireName = 'BussinessTypeRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BussinessTypeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.typeName;
    if (value != null) {
      result
        ..add('type_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  BussinessTypeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BussinessTypeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type_name':
          result.typeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$BussinessTypeRecord extends BussinessTypeRecord {
  @override
  final String? typeName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BussinessTypeRecord(
          [void Function(BussinessTypeRecordBuilder)? updates]) =>
      (new BussinessTypeRecordBuilder()..update(updates))._build();

  _$BussinessTypeRecord._({this.typeName, this.ffRef}) : super._();

  @override
  BussinessTypeRecord rebuild(
          void Function(BussinessTypeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BussinessTypeRecordBuilder toBuilder() =>
      new BussinessTypeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BussinessTypeRecord &&
        typeName == other.typeName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, typeName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BussinessTypeRecord')
          ..add('typeName', typeName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BussinessTypeRecordBuilder
    implements Builder<BussinessTypeRecord, BussinessTypeRecordBuilder> {
  _$BussinessTypeRecord? _$v;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BussinessTypeRecordBuilder() {
    BussinessTypeRecord._initializeBuilder(this);
  }

  BussinessTypeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeName = $v.typeName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BussinessTypeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BussinessTypeRecord;
  }

  @override
  void update(void Function(BussinessTypeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BussinessTypeRecord build() => _build();

  _$BussinessTypeRecord _build() {
    final _$result =
        _$v ?? new _$BussinessTypeRecord._(typeName: typeName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
