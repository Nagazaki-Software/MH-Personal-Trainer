import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfessorAccountRecord extends FirestoreRecord {
  ProfessorAccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userAccount" field.
  bool? _userAccount;
  bool get userAccount => _userAccount ?? false;
  bool hasUserAccount() => _userAccount != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "codigoPersonal" field.
  int? _codigoPersonal;
  int get codigoPersonal => _codigoPersonal ?? 0;
  bool hasCodigoPersonal() => _codigoPersonal != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _userAccount = snapshotData['userAccount'] as bool?;
    _password = snapshotData['password'] as String?;
    _codigoPersonal = castToType<int>(snapshotData['codigoPersonal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('professorAccount');

  static Stream<ProfessorAccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfessorAccountRecord.fromSnapshot(s));

  static Future<ProfessorAccountRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProfessorAccountRecord.fromSnapshot(s));

  static ProfessorAccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfessorAccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfessorAccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfessorAccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfessorAccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfessorAccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfessorAccountRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  bool? userAccount,
  String? password,
  int? codigoPersonal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'userAccount': userAccount,
      'password': password,
      'codigoPersonal': codigoPersonal,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfessorAccountRecordDocumentEquality
    implements Equality<ProfessorAccountRecord> {
  const ProfessorAccountRecordDocumentEquality();

  @override
  bool equals(ProfessorAccountRecord? e1, ProfessorAccountRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.userAccount == e2?.userAccount &&
        e1?.password == e2?.password &&
        e1?.codigoPersonal == e2?.codigoPersonal;
  }

  @override
  int hash(ProfessorAccountRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.userAccount,
        e?.password,
        e?.codigoPersonal
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfessorAccountRecord;
}
