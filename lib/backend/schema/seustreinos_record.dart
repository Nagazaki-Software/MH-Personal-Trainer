import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeustreinosRecord extends FirestoreRecord {
  SeustreinosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeDoTreino" field.
  String? _nomeDoTreino;
  String get nomeDoTreino => _nomeDoTreino ?? '';
  bool hasNomeDoTreino() => _nomeDoTreino != null;

  // "colecao" field.
  String? _colecao;
  String get colecao => _colecao ?? '';
  bool hasColecao() => _colecao != null;

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeDoTreino = snapshotData['nomeDoTreino'] as String?;
    _colecao = snapshotData['colecao'] as String?;
    _videoUrl = snapshotData['videoUrl'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seustreinos')
          : FirebaseFirestore.instance.collectionGroup('seustreinos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('seustreinos').doc(id);

  static Stream<SeustreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeustreinosRecord.fromSnapshot(s));

  static Future<SeustreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeustreinosRecord.fromSnapshot(s));

  static SeustreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeustreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeustreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeustreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeustreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeustreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeustreinosRecordData({
  String? nomeDoTreino,
  String? colecao,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDoTreino': nomeDoTreino,
      'colecao': colecao,
      'videoUrl': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeustreinosRecordDocumentEquality implements Equality<SeustreinosRecord> {
  const SeustreinosRecordDocumentEquality();

  @override
  bool equals(SeustreinosRecord? e1, SeustreinosRecord? e2) {
    return e1?.nomeDoTreino == e2?.nomeDoTreino &&
        e1?.colecao == e2?.colecao &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(SeustreinosRecord? e) =>
      const ListEquality().hash([e?.nomeDoTreino, e?.colecao, e?.videoUrl]);

  @override
  bool isValidKey(Object? o) => o is SeustreinosRecord;
}
