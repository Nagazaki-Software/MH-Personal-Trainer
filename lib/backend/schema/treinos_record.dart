import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosRecord extends FirestoreRecord {
  TreinosRecord._(
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

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "uidTreinos" field.
  String? _uidTreinos;
  String get uidTreinos => _uidTreinos ?? '';
  bool hasUidTreinos() => _uidTreinos != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeDoTreino = snapshotData['nomeDoTreino'] as String?;
    _colecao = snapshotData['colecao'] as String?;
    _videoUrl = snapshotData['videoUrl'] as String?;
    _uid = snapshotData['uid'] as String?;
    _uidTreinos = snapshotData['uidTreinos'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('treinos')
          : FirebaseFirestore.instance.collectionGroup('treinos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('treinos').doc(id);

  static Stream<TreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosRecord.fromSnapshot(s));

  static Future<TreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinosRecord.fromSnapshot(s));

  static TreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosRecordData({
  String? nomeDoTreino,
  String? colecao,
  String? videoUrl,
  String? uid,
  String? uidTreinos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDoTreino': nomeDoTreino,
      'colecao': colecao,
      'videoUrl': videoUrl,
      'uid': uid,
      'uidTreinos': uidTreinos,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinosRecordDocumentEquality implements Equality<TreinosRecord> {
  const TreinosRecordDocumentEquality();

  @override
  bool equals(TreinosRecord? e1, TreinosRecord? e2) {
    return e1?.nomeDoTreino == e2?.nomeDoTreino &&
        e1?.colecao == e2?.colecao &&
        e1?.videoUrl == e2?.videoUrl &&
        e1?.uid == e2?.uid &&
        e1?.uidTreinos == e2?.uidTreinos;
  }

  @override
  int hash(TreinosRecord? e) => const ListEquality()
      .hash([e?.nomeDoTreino, e?.colecao, e?.videoUrl, e?.uid, e?.uidTreinos]);

  @override
  bool isValidKey(Object? o) => o is TreinosRecord;
}
