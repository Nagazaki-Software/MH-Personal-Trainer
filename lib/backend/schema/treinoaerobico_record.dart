import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinoaerobicoRecord extends FirestoreRecord {
  TreinoaerobicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  bool hasTreino() => _treino != null;

  // "aquecimento" field.
  String? _aquecimento;
  String get aquecimento => _aquecimento ?? '';
  bool hasAquecimento() => _aquecimento != null;

  // "voltaacalma" field.
  String? _voltaacalma;
  String get voltaacalma => _voltaacalma ?? '';
  bool hasVoltaacalma() => _voltaacalma != null;

  // "observacoes" field.
  String? _observacoes;
  String get observacoes => _observacoes ?? '';
  bool hasObservacoes() => _observacoes != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _treino = snapshotData['treino'] as String?;
    _aquecimento = snapshotData['aquecimento'] as String?;
    _voltaacalma = snapshotData['voltaacalma'] as String?;
    _observacoes = snapshotData['observacoes'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('treinoaerobico')
          : FirebaseFirestore.instance.collectionGroup('treinoaerobico');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('treinoaerobico').doc(id);

  static Stream<TreinoaerobicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinoaerobicoRecord.fromSnapshot(s));

  static Future<TreinoaerobicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinoaerobicoRecord.fromSnapshot(s));

  static TreinoaerobicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinoaerobicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinoaerobicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinoaerobicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinoaerobicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinoaerobicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinoaerobicoRecordData({
  String? treino,
  String? aquecimento,
  String? voltaacalma,
  String? observacoes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treino': treino,
      'aquecimento': aquecimento,
      'voltaacalma': voltaacalma,
      'observacoes': observacoes,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinoaerobicoRecordDocumentEquality
    implements Equality<TreinoaerobicoRecord> {
  const TreinoaerobicoRecordDocumentEquality();

  @override
  bool equals(TreinoaerobicoRecord? e1, TreinoaerobicoRecord? e2) {
    return e1?.treino == e2?.treino &&
        e1?.aquecimento == e2?.aquecimento &&
        e1?.voltaacalma == e2?.voltaacalma &&
        e1?.observacoes == e2?.observacoes;
  }

  @override
  int hash(TreinoaerobicoRecord? e) => const ListEquality()
      .hash([e?.treino, e?.aquecimento, e?.voltaacalma, e?.observacoes]);

  @override
  bool isValidKey(Object? o) => o is TreinoaerobicoRecord;
}
