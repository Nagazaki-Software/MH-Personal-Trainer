import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeuProgressoRecord extends FirestoreRecord {
  MeuProgressoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imageAluno" field.
  String? _imageAluno;
  String get imageAluno => _imageAluno ?? '';
  bool hasImageAluno() => _imageAluno != null;

  // "ultimaAtualizacao" field.
  DateTime? _ultimaAtualizacao;
  DateTime? get ultimaAtualizacao => _ultimaAtualizacao;
  bool hasUltimaAtualizacao() => _ultimaAtualizacao != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _imageAluno = snapshotData['imageAluno'] as String?;
    _ultimaAtualizacao = snapshotData['ultimaAtualizacao'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('meuProgresso')
          : FirebaseFirestore.instance.collectionGroup('meuProgresso');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('meuProgresso').doc(id);

  static Stream<MeuProgressoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeuProgressoRecord.fromSnapshot(s));

  static Future<MeuProgressoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeuProgressoRecord.fromSnapshot(s));

  static MeuProgressoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeuProgressoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeuProgressoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeuProgressoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeuProgressoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeuProgressoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeuProgressoRecordData({
  String? imageAluno,
  DateTime? ultimaAtualizacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageAluno': imageAluno,
      'ultimaAtualizacao': ultimaAtualizacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeuProgressoRecordDocumentEquality
    implements Equality<MeuProgressoRecord> {
  const MeuProgressoRecordDocumentEquality();

  @override
  bool equals(MeuProgressoRecord? e1, MeuProgressoRecord? e2) {
    return e1?.imageAluno == e2?.imageAluno &&
        e1?.ultimaAtualizacao == e2?.ultimaAtualizacao;
  }

  @override
  int hash(MeuProgressoRecord? e) =>
      const ListEquality().hash([e?.imageAluno, e?.ultimaAtualizacao]);

  @override
  bool isValidKey(Object? o) => o is MeuProgressoRecord;
}
