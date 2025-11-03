import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosDoProfessorRecord extends FirestoreRecord {
  TreinosDoProfessorRecord._(
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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeDoTreino = snapshotData['nomeDoTreino'] as String?;
    _colecao = snapshotData['colecao'] as String?;
    _videoUrl = snapshotData['videoUrl'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('treinosDoProfessor')
          : FirebaseFirestore.instance.collectionGroup('treinosDoProfessor');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('treinosDoProfessor').doc(id);

  static Stream<TreinosDoProfessorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosDoProfessorRecord.fromSnapshot(s));

  static Future<TreinosDoProfessorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TreinosDoProfessorRecord.fromSnapshot(s));

  static TreinosDoProfessorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosDoProfessorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosDoProfessorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosDoProfessorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosDoProfessorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosDoProfessorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosDoProfessorRecordData({
  String? nomeDoTreino,
  String? colecao,
  String? videoUrl,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDoTreino': nomeDoTreino,
      'colecao': colecao,
      'videoUrl': videoUrl,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinosDoProfessorRecordDocumentEquality
    implements Equality<TreinosDoProfessorRecord> {
  const TreinosDoProfessorRecordDocumentEquality();

  @override
  bool equals(TreinosDoProfessorRecord? e1, TreinosDoProfessorRecord? e2) {
    return e1?.nomeDoTreino == e2?.nomeDoTreino &&
        e1?.colecao == e2?.colecao &&
        e1?.videoUrl == e2?.videoUrl &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(TreinosDoProfessorRecord? e) => const ListEquality()
      .hash([e?.nomeDoTreino, e?.colecao, e?.videoUrl, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is TreinosDoProfessorRecord;
}
