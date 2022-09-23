// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('Password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firmName;
    if (value != null) {
      result
        ..add('firm_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.businessType;
    if (value != null) {
      result
        ..add('business_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regNo;
    if (value != null) {
      result
        ..add('reg_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approved;
    if (value != null) {
      result
        ..add('approved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bloodGroup;
    if (value != null) {
      result
        ..add('blood_group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPaid;
    if (value != null) {
      result
        ..add('is_paid')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('is_admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.registerNo;
    if (value != null) {
      result
        ..add('RegisterNo')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('User_Id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('Admin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeType;
    if (value != null) {
      result
        ..add('store_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeArea;
    if (value != null) {
      result
        ..add('Store_Area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('Area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVerify;
    if (value != null) {
      result
        ..add('is_verify')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentAmount;
    if (value != null) {
      result
        ..add('Payment_Amount')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firm_name':
          result.firmName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'business_type':
          result.businessType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reg_no':
          result.regNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'approved':
          result.approved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'blood_group':
          result.bloodGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_paid':
          result.isPaid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_admin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'RegisterNo':
          result.registerNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'User_Id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'store_type':
          result.storeType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Store_Area':
          result.storeArea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_verify':
          result.isVerify = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Payment_Amount':
          result.paymentAmount = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? password;
  @override
  final String? uid;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? photoUrl;
  @override
  final String? firmName;
  @override
  final String? businessType;
  @override
  final String? regNo;
  @override
  final bool? approved;
  @override
  final String? address;
  @override
  final String? bloodGroup;
  @override
  final bool? isPaid;
  @override
  final bool? isAdmin;
  @override
  final int? registerNo;
  @override
  final int? userId;
  @override
  final String? admin;
  @override
  final String? storeType;
  @override
  final String? storeArea;
  @override
  final String? area;
  @override
  final String? isVerify;
  @override
  final int? paymentAmount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.password,
      this.uid,
      this.email,
      this.displayName,
      this.createdTime,
      this.phoneNumber,
      this.photoUrl,
      this.firmName,
      this.businessType,
      this.regNo,
      this.approved,
      this.address,
      this.bloodGroup,
      this.isPaid,
      this.isAdmin,
      this.registerNo,
      this.userId,
      this.admin,
      this.storeType,
      this.storeArea,
      this.area,
      this.isVerify,
      this.paymentAmount,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        password == other.password &&
        uid == other.uid &&
        email == other.email &&
        displayName == other.displayName &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        photoUrl == other.photoUrl &&
        firmName == other.firmName &&
        businessType == other.businessType &&
        regNo == other.regNo &&
        approved == other.approved &&
        address == other.address &&
        bloodGroup == other.bloodGroup &&
        isPaid == other.isPaid &&
        isAdmin == other.isAdmin &&
        registerNo == other.registerNo &&
        userId == other.userId &&
        admin == other.admin &&
        storeType == other.storeType &&
        storeArea == other.storeArea &&
        area == other.area &&
        isVerify == other.isVerify &&
        paymentAmount == other.paymentAmount &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, password.hashCode), uid.hashCode), email.hashCode), displayName.hashCode), createdTime.hashCode),
                                                                                phoneNumber.hashCode),
                                                                            photoUrl.hashCode),
                                                                        firmName.hashCode),
                                                                    businessType.hashCode),
                                                                regNo.hashCode),
                                                            approved.hashCode),
                                                        address.hashCode),
                                                    bloodGroup.hashCode),
                                                isPaid.hashCode),
                                            isAdmin.hashCode),
                                        registerNo.hashCode),
                                    userId.hashCode),
                                admin.hashCode),
                            storeType.hashCode),
                        storeArea.hashCode),
                    area.hashCode),
                isVerify.hashCode),
            paymentAmount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('password', password)
          ..add('uid', uid)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('photoUrl', photoUrl)
          ..add('firmName', firmName)
          ..add('businessType', businessType)
          ..add('regNo', regNo)
          ..add('approved', approved)
          ..add('address', address)
          ..add('bloodGroup', bloodGroup)
          ..add('isPaid', isPaid)
          ..add('isAdmin', isAdmin)
          ..add('registerNo', registerNo)
          ..add('userId', userId)
          ..add('admin', admin)
          ..add('storeType', storeType)
          ..add('storeArea', storeArea)
          ..add('area', area)
          ..add('isVerify', isVerify)
          ..add('paymentAmount', paymentAmount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _firmName;
  String? get firmName => _$this._firmName;
  set firmName(String? firmName) => _$this._firmName = firmName;

  String? _businessType;
  String? get businessType => _$this._businessType;
  set businessType(String? businessType) => _$this._businessType = businessType;

  String? _regNo;
  String? get regNo => _$this._regNo;
  set regNo(String? regNo) => _$this._regNo = regNo;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _bloodGroup;
  String? get bloodGroup => _$this._bloodGroup;
  set bloodGroup(String? bloodGroup) => _$this._bloodGroup = bloodGroup;

  bool? _isPaid;
  bool? get isPaid => _$this._isPaid;
  set isPaid(bool? isPaid) => _$this._isPaid = isPaid;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  int? _registerNo;
  int? get registerNo => _$this._registerNo;
  set registerNo(int? registerNo) => _$this._registerNo = registerNo;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _admin;
  String? get admin => _$this._admin;
  set admin(String? admin) => _$this._admin = admin;

  String? _storeType;
  String? get storeType => _$this._storeType;
  set storeType(String? storeType) => _$this._storeType = storeType;

  String? _storeArea;
  String? get storeArea => _$this._storeArea;
  set storeArea(String? storeArea) => _$this._storeArea = storeArea;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _isVerify;
  String? get isVerify => _$this._isVerify;
  set isVerify(String? isVerify) => _$this._isVerify = isVerify;

  int? _paymentAmount;
  int? get paymentAmount => _$this._paymentAmount;
  set paymentAmount(int? paymentAmount) =>
      _$this._paymentAmount = paymentAmount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _uid = $v.uid;
      _email = $v.email;
      _displayName = $v.displayName;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _photoUrl = $v.photoUrl;
      _firmName = $v.firmName;
      _businessType = $v.businessType;
      _regNo = $v.regNo;
      _approved = $v.approved;
      _address = $v.address;
      _bloodGroup = $v.bloodGroup;
      _isPaid = $v.isPaid;
      _isAdmin = $v.isAdmin;
      _registerNo = $v.registerNo;
      _userId = $v.userId;
      _admin = $v.admin;
      _storeType = $v.storeType;
      _storeArea = $v.storeArea;
      _area = $v.area;
      _isVerify = $v.isVerify;
      _paymentAmount = $v.paymentAmount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            password: password,
            uid: uid,
            email: email,
            displayName: displayName,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            photoUrl: photoUrl,
            firmName: firmName,
            businessType: businessType,
            regNo: regNo,
            approved: approved,
            address: address,
            bloodGroup: bloodGroup,
            isPaid: isPaid,
            isAdmin: isAdmin,
            registerNo: registerNo,
            userId: userId,
            admin: admin,
            storeType: storeType,
            storeArea: storeArea,
            area: area,
            isVerify: isVerify,
            paymentAmount: paymentAmount,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
