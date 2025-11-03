import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MegaTreinosRecord extends FirestoreRecord {
  MegaTreinosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  // "treinos" field.
  String? _treinos;
  String get treinos => _treinos ?? '';
  bool hasTreinos() => _treinos != null;

  // "treinosInList" field.
  List<String>? _treinosInList;
  List<String> get treinosInList => _treinosInList ?? const [];
  bool hasTreinosInList() => _treinosInList != null;

  // "colecao" field.
  String? _colecao;
  String get colecao => _colecao ?? '';
  bool hasColecao() => _colecao != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _videoUrl = snapshotData['videoUrl'] as String?;
    _treinos = snapshotData['treinos'] as String?;
    _treinosInList = getDataList(snapshotData['treinosInList']);
    _colecao = snapshotData['colecao'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('megaTreinos')
          : FirebaseFirestore.instance.collectionGroup('megaTreinos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('megaTreinos').doc(id);

  static Stream<MegaTreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MegaTreinosRecord.fromSnapshot(s));

  static Future<MegaTreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MegaTreinosRecord.fromSnapshot(s));

  static MegaTreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MegaTreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MegaTreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MegaTreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MegaTreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MegaTreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMegaTreinosRecordData({
  String? videoUrl,
  String? treinos,
  String? colecao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'videoUrl': videoUrl,
      'treinos': treinos,
      'colecao': colecao,
    }.withoutNulls,
  );

  return firestoreData;
}

class MegaTreinosRecordDocumentEquality implements Equality<MegaTreinosRecord> {
  const MegaTreinosRecordDocumentEquality();

  @override
  bool equals(MegaTreinosRecord? e1, MegaTreinosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.videoUrl == e2?.videoUrl &&
        e1?.treinos == e2?.treinos &&
        listEquality.equals(e1?.treinosInList, e2?.treinosInList) &&
        e1?.colecao == e2?.colecao;
  }

  @override
  int hash(MegaTreinosRecord? e) => const ListEquality()
      .hash([e?.videoUrl, e?.treinos, e?.treinosInList, e?.colecao]);

  @override
  bool isValidKey(Object? o) => o is MegaTreinosRecord;
}
