import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeriesPrescritasRecord extends FirestoreRecord {
  SeriesPrescritasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uidTreinos" field.
  String? _uidTreinos;
  String get uidTreinos => _uidTreinos ?? '';
  bool hasUidTreinos() => _uidTreinos != null;

  // "series" field.
  String? _series;
  String get series => _series ?? '';
  bool hasSeries() => _series != null;

  // "repeticao" field.
  String? _repeticao;
  String get repeticao => _repeticao ?? '';
  bool hasRepeticao() => _repeticao != null;

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  bool hasTreino() => _treino != null;

  void _initializeFields() {
    _uidTreinos = snapshotData['uidTreinos'] as String?;
    _series = snapshotData['series'] as String?;
    _repeticao = snapshotData['repeticao'] as String?;
    _treino = snapshotData['treino'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('seriesPrescritas');

  static Stream<SeriesPrescritasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeriesPrescritasRecord.fromSnapshot(s));

  static Future<SeriesPrescritasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SeriesPrescritasRecord.fromSnapshot(s));

  static SeriesPrescritasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeriesPrescritasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeriesPrescritasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeriesPrescritasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeriesPrescritasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeriesPrescritasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeriesPrescritasRecordData({
  String? uidTreinos,
  String? series,
  String? repeticao,
  String? treino,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uidTreinos': uidTreinos,
      'series': series,
      'repeticao': repeticao,
      'treino': treino,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeriesPrescritasRecordDocumentEquality
    implements Equality<SeriesPrescritasRecord> {
  const SeriesPrescritasRecordDocumentEquality();

  @override
  bool equals(SeriesPrescritasRecord? e1, SeriesPrescritasRecord? e2) {
    return e1?.uidTreinos == e2?.uidTreinos &&
        e1?.series == e2?.series &&
        e1?.repeticao == e2?.repeticao &&
        e1?.treino == e2?.treino;
  }

  @override
  int hash(SeriesPrescritasRecord? e) => const ListEquality()
      .hash([e?.uidTreinos, e?.series, e?.repeticao, e?.treino]);

  @override
  bool isValidKey(Object? o) => o is SeriesPrescritasRecord;
}
