// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MembersRecord> _$membersRecordSerializer =
    new _$MembersRecordSerializer();

class _$MembersRecordSerializer implements StructuredSerializer<MembersRecord> {
  @override
  final Iterable<Type> types = const [MembersRecord, _$MembersRecord];
  @override
  final String wireName = 'MembersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MembersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.memberName;
    if (value != null) {
      result
        ..add('member_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memberPost;
    if (value != null) {
      result
        ..add('member_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memberPhone;
    if (value != null) {
      result
        ..add('member_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memberPhoto;
    if (value != null) {
      result
        ..add('member_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayOrder;
    if (value != null) {
      result
        ..add('display_order')
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
  MembersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'member_name':
          result.memberName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'member_post':
          result.memberPost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'member_phone':
          result.memberPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'member_photo':
          result.memberPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_order':
          result.displayOrder = serializers.deserialize(value,
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

class _$MembersRecord extends MembersRecord {
  @override
  final String? memberName;
  @override
  final String? memberPost;
  @override
  final String? memberPhone;
  @override
  final String? memberPhoto;
  @override
  final int? displayOrder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MembersRecord([void Function(MembersRecordBuilder)? updates]) =>
      (new MembersRecordBuilder()..update(updates))._build();

  _$MembersRecord._(
      {this.memberName,
      this.memberPost,
      this.memberPhone,
      this.memberPhoto,
      this.displayOrder,
      this.ffRef})
      : super._();

  @override
  MembersRecord rebuild(void Function(MembersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembersRecordBuilder toBuilder() => new MembersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MembersRecord &&
        memberName == other.memberName &&
        memberPost == other.memberPost &&
        memberPhone == other.memberPhone &&
        memberPhoto == other.memberPhoto &&
        displayOrder == other.displayOrder &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, memberName.hashCode), memberPost.hashCode),
                    memberPhone.hashCode),
                memberPhoto.hashCode),
            displayOrder.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MembersRecord')
          ..add('memberName', memberName)
          ..add('memberPost', memberPost)
          ..add('memberPhone', memberPhone)
          ..add('memberPhoto', memberPhoto)
          ..add('displayOrder', displayOrder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MembersRecordBuilder
    implements Builder<MembersRecord, MembersRecordBuilder> {
  _$MembersRecord? _$v;

  String? _memberName;
  String? get memberName => _$this._memberName;
  set memberName(String? memberName) => _$this._memberName = memberName;

  String? _memberPost;
  String? get memberPost => _$this._memberPost;
  set memberPost(String? memberPost) => _$this._memberPost = memberPost;

  String? _memberPhone;
  String? get memberPhone => _$this._memberPhone;
  set memberPhone(String? memberPhone) => _$this._memberPhone = memberPhone;

  String? _memberPhoto;
  String? get memberPhoto => _$this._memberPhoto;
  set memberPhoto(String? memberPhoto) => _$this._memberPhoto = memberPhoto;

  int? _displayOrder;
  int? get displayOrder => _$this._displayOrder;
  set displayOrder(int? displayOrder) => _$this._displayOrder = displayOrder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MembersRecordBuilder() {
    MembersRecord._initializeBuilder(this);
  }

  MembersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberName = $v.memberName;
      _memberPost = $v.memberPost;
      _memberPhone = $v.memberPhone;
      _memberPhoto = $v.memberPhoto;
      _displayOrder = $v.displayOrder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MembersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MembersRecord;
  }

  @override
  void update(void Function(MembersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MembersRecord build() => _build();

  _$MembersRecord _build() {
    final _$result = _$v ??
        new _$MembersRecord._(
            memberName: memberName,
            memberPost: memberPost,
            memberPhone: memberPhone,
            memberPhoto: memberPhoto,
            displayOrder: displayOrder,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
