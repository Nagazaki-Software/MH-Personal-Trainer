import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosWithVideoRecord extends FirestoreRecord {
  TreinosWithVideoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  bool hasTreino() => _treino != null;

  void _initializeFields() {
    _videoUrl = snapshotData['videoUrl'] as String?;
    _treino = snapshotData['treino'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinosWithVideo');

  static Stream<TreinosWithVideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosWithVideoRecord.fromSnapshot(s));

  static Future<TreinosWithVideoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TreinosWithVideoRecord.fromSnapshot(s));

  static TreinosWithVideoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosWithVideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosWithVideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosWithVideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosWithVideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosWithVideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosWithVideoRecordData({
  String? videoUrl,
  String? treino,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'videoUrl': videoUrl,
      'treino': treino,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinosWithVideoRecordDocumentEquality
    implements Equality<TreinosWithVideoRecord> {
  const TreinosWithVideoRecordDocumentEquality();

  @override
  bool equals(TreinosWithVideoRecord? e1, TreinosWithVideoRecord? e2) {
    return e1?.videoUrl == e2?.videoUrl && e1?.treino == e2?.treino;
  }

  @override
  int hash(TreinosWithVideoRecord? e) =>
      const ListEquality().hash([e?.videoUrl, e?.treino]);

  @override
  bool isValidKey(Object? o) => o is TreinosWithVideoRecord;
}
