import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupRecord extends FirestoreRecord {
  GroupRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeDoGrupo" field.
  String? _nomeDoGrupo;
  String get nomeDoGrupo => _nomeDoGrupo ?? '';
  bool hasNomeDoGrupo() => _nomeDoGrupo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeDoGrupo = snapshotData['nomeDoGrupo'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('group')
          : FirebaseFirestore.instance.collectionGroup('group');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('group').doc(id);

  static Stream<GroupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupRecord.fromSnapshot(s));

  static Future<GroupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupRecord.fromSnapshot(s));

  static GroupRecord fromSnapshot(DocumentSnapshot snapshot) => GroupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupRecordData({
  String? nomeDoGrupo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDoGrupo': nomeDoGrupo,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupRecordDocumentEquality implements Equality<GroupRecord> {
  const GroupRecordDocumentEquality();

  @override
  bool equals(GroupRecord? e1, GroupRecord? e2) {
    return e1?.nomeDoGrupo == e2?.nomeDoGrupo;
  }

  @override
  int hash(GroupRecord? e) => const ListEquality().hash([e?.nomeDoGrupo]);

  @override
  bool isValidKey(Object? o) => o is GroupRecord;
}
