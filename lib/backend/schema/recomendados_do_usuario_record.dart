import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecomendadosDoUsuarioRecord extends FirestoreRecord {
  RecomendadosDoUsuarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recomendacoes" field.
  RecomendacoesStruct? _recomendacoes;
  RecomendacoesStruct get recomendacoes =>
      _recomendacoes ?? RecomendacoesStruct();
  bool hasRecomendacoes() => _recomendacoes != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _recomendacoes = snapshotData['recomendacoes'] is RecomendacoesStruct
        ? snapshotData['recomendacoes']
        : RecomendacoesStruct.maybeFromMap(snapshotData['recomendacoes']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recomendadosDoUsuario')
          : FirebaseFirestore.instance.collectionGroup('recomendadosDoUsuario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recomendadosDoUsuario').doc(id);

  static Stream<RecomendadosDoUsuarioRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => RecomendadosDoUsuarioRecord.fromSnapshot(s));

  static Future<RecomendadosDoUsuarioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecomendadosDoUsuarioRecord.fromSnapshot(s));

  static RecomendadosDoUsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecomendadosDoUsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecomendadosDoUsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecomendadosDoUsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecomendadosDoUsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecomendadosDoUsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecomendadosDoUsuarioRecordData({
  RecomendacoesStruct? recomendacoes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recomendacoes': RecomendacoesStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "recomendacoes" field.
  addRecomendacoesStructData(firestoreData, recomendacoes, 'recomendacoes');

  return firestoreData;
}

class RecomendadosDoUsuarioRecordDocumentEquality
    implements Equality<RecomendadosDoUsuarioRecord> {
  const RecomendadosDoUsuarioRecordDocumentEquality();

  @override
  bool equals(
      RecomendadosDoUsuarioRecord? e1, RecomendadosDoUsuarioRecord? e2) {
    return e1?.recomendacoes == e2?.recomendacoes;
  }

  @override
  int hash(RecomendadosDoUsuarioRecord? e) =>
      const ListEquality().hash([e?.recomendacoes]);

  @override
  bool isValidKey(Object? o) => o is RecomendadosDoUsuarioRecord;
}
