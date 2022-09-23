import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'Password')
  String? get password;

  String? get uid;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'firm_name')
  String? get firmName;

  @BuiltValueField(wireName: 'business_type')
  String? get businessType;

  @BuiltValueField(wireName: 'reg_no')
  String? get regNo;

  bool? get approved;

  String? get address;

  @BuiltValueField(wireName: 'blood_group')
  String? get bloodGroup;

  @BuiltValueField(wireName: 'is_paid')
  bool? get isPaid;

  @BuiltValueField(wireName: 'is_admin')
  bool? get isAdmin;

  @BuiltValueField(wireName: 'RegisterNo')
  int? get registerNo;

  @BuiltValueField(wireName: 'User_Id')
  int? get userId;

  @BuiltValueField(wireName: 'Admin')
  String? get admin;

  @BuiltValueField(wireName: 'store_type')
  String? get storeType;

  @BuiltValueField(wireName: 'Store_Area')
  String? get storeArea;

  @BuiltValueField(wireName: 'Area')
  String? get area;

  @BuiltValueField(wireName: 'is_verify')
  String? get isVerify;

  @BuiltValueField(wireName: 'Payment_Amount')
  int? get paymentAmount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..password = ''
    ..uid = ''
    ..email = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..photoUrl = ''
    ..firmName = ''
    ..businessType = ''
    ..regNo = ''
    ..approved = false
    ..address = ''
    ..bloodGroup = ''
    ..isPaid = false
    ..isAdmin = false
    ..registerNo = 0
    ..userId = 0
    ..admin = ''
    ..storeType = ''
    ..storeArea = ''
    ..area = ''
    ..isVerify = ''
    ..paymentAmount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => UsersRecord(
        (c) => c
          ..password = snapshot.data['Password']
          ..uid = snapshot.data['uid']
          ..email = snapshot.data['email']
          ..displayName = snapshot.data['display_name']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..photoUrl = snapshot.data['photo_url']
          ..firmName = snapshot.data['firm_name']
          ..businessType = snapshot.data['business_type']
          ..regNo = snapshot.data['reg_no']
          ..approved = snapshot.data['approved']
          ..address = snapshot.data['address']
          ..bloodGroup = snapshot.data['blood_group']
          ..isPaid = snapshot.data['is_paid']
          ..isAdmin = snapshot.data['is_admin']
          ..registerNo = snapshot.data['RegisterNo']?.round()
          ..userId = snapshot.data['User_Id']?.round()
          ..admin = snapshot.data['Admin']
          ..storeType = snapshot.data['store_type']
          ..storeArea = snapshot.data['Store_Area']
          ..area = snapshot.data['Area']
          ..isVerify = snapshot.data['is_verify']
          ..paymentAmount = snapshot.data['Payment_Amount']?.round()
          ..ffRef = UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? password,
  String? uid,
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  String? photoUrl,
  String? firmName,
  String? businessType,
  String? regNo,
  bool? approved,
  String? address,
  String? bloodGroup,
  bool? isPaid,
  bool? isAdmin,
  int? registerNo,
  int? userId,
  String? admin,
  String? storeType,
  String? storeArea,
  String? area,
  String? isVerify,
  int? paymentAmount,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..password = password
        ..uid = uid
        ..email = email
        ..displayName = displayName
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..photoUrl = photoUrl
        ..firmName = firmName
        ..businessType = businessType
        ..regNo = regNo
        ..approved = approved
        ..address = address
        ..bloodGroup = bloodGroup
        ..isPaid = isPaid
        ..isAdmin = isAdmin
        ..registerNo = registerNo
        ..userId = userId
        ..admin = admin
        ..storeType = storeType
        ..storeArea = storeArea
        ..area = area
        ..isVerify = isVerify
        ..paymentAmount = paymentAmount,
    ),
  );

  return firestoreData;
}
