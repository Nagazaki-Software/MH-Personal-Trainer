import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinoPeitoralRecord extends FirestoreRecord {
  TreinoPeitoralRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "nomeTreino" field.
  String? _nomeTreino;
  String get nomeTreino => _nomeTreino ?? '';
  bool hasNomeTreino() => _nomeTreino != null;

  // "imageTreino" field.
  String? _imageTreino;
  String get imageTreino => _imageTreino ?? '';
  bool hasImageTreino() => _imageTreino != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  bool hasTreinos() => _treinos != null;

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _category = snapshotData['Category'] as String?;
    _nomeTreino = snapshotData['nomeTreino'] as String?;
    _imageTreino = snapshotData['imageTreino'] as String?;
    _treinos = getDataList(snapshotData['treinos']);
    _videoUrl = snapshotData['videoUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinoPeitoral');

  static Stream<TreinoPeitoralRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinoPeitoralRecord.fromSnapshot(s));

  static Future<TreinoPeitoralRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinoPeitoralRecord.fromSnapshot(s));

  static TreinoPeitoralRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinoPeitoralRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinoPeitoralRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinoPeitoralRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinoPeitoralRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinoPeitoralRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinoPeitoralRecordData({
  String? category,
  String? nomeTreino,
  String? imageTreino,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Category': category,
      'nomeTreino': nomeTreino,
      'imageTreino': imageTreino,
      'videoUrl': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinoPeitoralRecordDocumentEquality
    implements Equality<TreinoPeitoralRecord> {
  const TreinoPeitoralRecordDocumentEquality();

  @override
  bool equals(TreinoPeitoralRecord? e1, TreinoPeitoralRecord? e2) {
    const listEquality = ListEquality();
    return e1?.category == e2?.category &&
        e1?.nomeTreino == e2?.nomeTreino &&
        e1?.imageTreino == e2?.imageTreino &&
        listEquality.equals(e1?.treinos, e2?.treinos) &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(TreinoPeitoralRecord? e) => const ListEquality().hash(
      [e?.category, e?.nomeTreino, e?.imageTreino, e?.treinos, e?.videoUrl]);

  @override
  bool isValidKey(Object? o) => o is TreinoPeitoralRecord;
}
