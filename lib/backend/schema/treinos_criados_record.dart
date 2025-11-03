import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosCriadosRecord extends FirestoreRecord {
  TreinosCriadosRecord._(
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
          ? parent.collection('treinosCriados')
          : FirebaseFirestore.instance.collectionGroup('treinosCriados');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('treinosCriados').doc(id);

  static Stream<TreinosCriadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosCriadosRecord.fromSnapshot(s));

  static Future<TreinosCriadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinosCriadosRecord.fromSnapshot(s));

  static TreinosCriadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosCriadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosCriadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosCriadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosCriadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosCriadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosCriadosRecordData({
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

class TreinosCriadosRecordDocumentEquality
    implements Equality<TreinosCriadosRecord> {
  const TreinosCriadosRecordDocumentEquality();

  @override
  bool equals(TreinosCriadosRecord? e1, TreinosCriadosRecord? e2) {
    return e1?.nomeDoTreino == e2?.nomeDoTreino &&
        e1?.colecao == e2?.colecao &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(TreinosCriadosRecord? e) =>
      const ListEquality().hash([e?.nomeDoTreino, e?.colecao, e?.videoUrl]);

  @override
  bool isValidKey(Object? o) => o is TreinosCriadosRecord;
}
