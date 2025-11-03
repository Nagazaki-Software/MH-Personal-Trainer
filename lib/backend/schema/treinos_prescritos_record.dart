import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosPrescritosRecord extends FirestoreRecord {
  TreinosPrescritosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  bool hasTreino() => _treino != null;

  // "tempo" field.
  String? _tempo;
  String get tempo => _tempo ?? '';
  bool hasTempo() => _tempo != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  void _initializeFields() {
    _treino = snapshotData['treino'] as String?;
    _tempo = snapshotData['tempo'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinosPrescritos');

  static Stream<TreinosPrescritosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosPrescritosRecord.fromSnapshot(s));

  static Future<TreinosPrescritosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TreinosPrescritosRecord.fromSnapshot(s));

  static TreinosPrescritosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosPrescritosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosPrescritosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosPrescritosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosPrescritosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosPrescritosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosPrescritosRecordData({
  String? treino,
  String? tempo,
  String? objetivo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treino': treino,
      'tempo': tempo,
      'objetivo': objetivo,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinosPrescritosRecordDocumentEquality
    implements Equality<TreinosPrescritosRecord> {
  const TreinosPrescritosRecordDocumentEquality();

  @override
  bool equals(TreinosPrescritosRecord? e1, TreinosPrescritosRecord? e2) {
    return e1?.treino == e2?.treino &&
        e1?.tempo == e2?.tempo &&
        e1?.objetivo == e2?.objetivo;
  }

  @override
  int hash(TreinosPrescritosRecord? e) =>
      const ListEquality().hash([e?.treino, e?.tempo, e?.objetivo]);

  @override
  bool isValidKey(Object? o) => o is TreinosPrescritosRecord;
}
