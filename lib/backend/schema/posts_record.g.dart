// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postOwner;
    if (value != null) {
      result
        ..add('post_owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.postPicture;
    if (value != null) {
      result
        ..add('post_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postDate;
    if (value != null) {
      result
        ..add('post_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.likeBy;
    if (value != null) {
      result
        ..add('like_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.postText;
    if (value != null) {
      result
        ..add('post_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creatorName;
    if (value != null) {
      result
        ..add('creator_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postId;
    if (value != null) {
      result
        ..add('Post_Id')
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
  PostsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'post_owner':
          result.postOwner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'post_picture':
          result.postPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_date':
          result.postDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'like_by':
          result.likeBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'post_text':
          result.postText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creator_name':
          result.creatorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Post_Id':
          result.postId = serializers.deserialize(value,
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

class _$PostsRecord extends PostsRecord {
  @override
  final DocumentReference<Object?>? postOwner;
  @override
  final String? postPicture;
  @override
  final DateTime? postDate;
  @override
  final BuiltList<DocumentReference<Object?>>? likeBy;
  @override
  final String? postText;
  @override
  final String? creatorName;
  @override
  final int? postId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostsRecord([void Function(PostsRecordBuilder)? updates]) =>
      (new PostsRecordBuilder()..update(updates))._build();

  _$PostsRecord._(
      {this.postOwner,
      this.postPicture,
      this.postDate,
      this.likeBy,
      this.postText,
      this.creatorName,
      this.postId,
      this.ffRef})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        postOwner == other.postOwner &&
        postPicture == other.postPicture &&
        postDate == other.postDate &&
        likeBy == other.likeBy &&
        postText == other.postText &&
        creatorName == other.creatorName &&
        postId == other.postId &&
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
                            $jc($jc(0, postOwner.hashCode),
                                postPicture.hashCode),
                            postDate.hashCode),
                        likeBy.hashCode),
                    postText.hashCode),
                creatorName.hashCode),
            postId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsRecord')
          ..add('postOwner', postOwner)
          ..add('postPicture', postPicture)
          ..add('postDate', postDate)
          ..add('likeBy', likeBy)
          ..add('postText', postText)
          ..add('creatorName', creatorName)
          ..add('postId', postId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord? _$v;

  DocumentReference<Object?>? _postOwner;
  DocumentReference<Object?>? get postOwner => _$this._postOwner;
  set postOwner(DocumentReference<Object?>? postOwner) =>
      _$this._postOwner = postOwner;

  String? _postPicture;
  String? get postPicture => _$this._postPicture;
  set postPicture(String? postPicture) => _$this._postPicture = postPicture;

  DateTime? _postDate;
  DateTime? get postDate => _$this._postDate;
  set postDate(DateTime? postDate) => _$this._postDate = postDate;

  ListBuilder<DocumentReference<Object?>>? _likeBy;
  ListBuilder<DocumentReference<Object?>> get likeBy =>
      _$this._likeBy ??= new ListBuilder<DocumentReference<Object?>>();
  set likeBy(ListBuilder<DocumentReference<Object?>>? likeBy) =>
      _$this._likeBy = likeBy;

  String? _postText;
  String? get postText => _$this._postText;
  set postText(String? postText) => _$this._postText = postText;

  String? _creatorName;
  String? get creatorName => _$this._creatorName;
  set creatorName(String? creatorName) => _$this._creatorName = creatorName;

  int? _postId;
  int? get postId => _$this._postId;
  set postId(int? postId) => _$this._postId = postId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postOwner = $v.postOwner;
      _postPicture = $v.postPicture;
      _postDate = $v.postDate;
      _likeBy = $v.likeBy?.toBuilder();
      _postText = $v.postText;
      _creatorName = $v.creatorName;
      _postId = $v.postId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsRecord build() => _build();

  _$PostsRecord _build() {
    _$PostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PostsRecord._(
              postOwner: postOwner,
              postPicture: postPicture,
              postDate: postDate,
              likeBy: _likeBy?.build(),
              postText: postText,
              creatorName: creatorName,
              postId: postId,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likeBy';
        _likeBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
