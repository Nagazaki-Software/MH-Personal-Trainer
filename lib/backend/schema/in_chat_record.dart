import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InChatRecord extends FirestoreRecord {
  InChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  // "aluno" field.
  DocumentReference? _aluno;
  DocumentReference? get aluno => _aluno;
  bool hasAluno() => _aluno != null;

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  bool hasMsg() => _msg != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _personal = snapshotData['personal'] as DocumentReference?;
    _aluno = snapshotData['aluno'] as DocumentReference?;
    _msg = snapshotData['msg'] as String?;
    _data = snapshotData['data'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('InChat')
          : FirebaseFirestore.instance.collectionGroup('InChat');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('InChat').doc(id);

  static Stream<InChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InChatRecord.fromSnapshot(s));

  static Future<InChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InChatRecord.fromSnapshot(s));

  static InChatRecord fromSnapshot(DocumentSnapshot snapshot) => InChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInChatRecordData({
  DocumentReference? personal,
  DocumentReference? aluno,
  String? msg,
  DateTime? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'personal': personal,
      'aluno': aluno,
      'msg': msg,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class InChatRecordDocumentEquality implements Equality<InChatRecord> {
  const InChatRecordDocumentEquality();

  @override
  bool equals(InChatRecord? e1, InChatRecord? e2) {
    return e1?.personal == e2?.personal &&
        e1?.aluno == e2?.aluno &&
        e1?.msg == e2?.msg &&
        e1?.data == e2?.data;
  }

  @override
  int hash(InChatRecord? e) =>
      const ListEquality().hash([e?.personal, e?.aluno, e?.msg, e?.data]);

  @override
  bool isValidKey(Object? o) => o is InChatRecord;
}
