import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeitoralTreinosRecord extends FirestoreRecord {
  PeitoralTreinosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treinos" field.
  String? _treinos;
  String get treinos => _treinos ?? '';
  bool hasTreinos() => _treinos != null;

  // "treinosInList" field.
  List<String>? _treinosInList;
  List<String> get treinosInList => _treinosInList ?? const [];
  bool hasTreinosInList() => _treinosInList != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _treinos = snapshotData['treinos'] as String?;
    _treinosInList = getDataList(snapshotData['treinosInList']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('peitoralTreinos')
          : FirebaseFirestore.instance.collectionGroup('peitoralTreinos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('peitoralTreinos').doc(id);

  static Stream<PeitoralTreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PeitoralTreinosRecord.fromSnapshot(s));

  static Future<PeitoralTreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PeitoralTreinosRecord.fromSnapshot(s));

  static PeitoralTreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PeitoralTreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PeitoralTreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PeitoralTreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PeitoralTreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PeitoralTreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPeitoralTreinosRecordData({
  String? treinos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treinos': treinos,
    }.withoutNulls,
  );

  return firestoreData;
}

class PeitoralTreinosRecordDocumentEquality
    implements Equality<PeitoralTreinosRecord> {
  const PeitoralTreinosRecordDocumentEquality();

  @override
  bool equals(PeitoralTreinosRecord? e1, PeitoralTreinosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.treinos == e2?.treinos &&
        listEquality.equals(e1?.treinosInList, e2?.treinosInList);
  }

  @override
  int hash(PeitoralTreinosRecord? e) =>
      const ListEquality().hash([e?.treinos, e?.treinosInList]);

  @override
  bool isValidKey(Object? o) => o is PeitoralTreinosRecord;
}
