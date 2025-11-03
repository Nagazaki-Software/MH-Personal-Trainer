import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacaoPosturalRecord extends FirestoreRecord {
  AvaliacaoPosturalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dateForAvaliacaoPostural" field.
  DateTime? _dateForAvaliacaoPostural;
  DateTime? get dateForAvaliacaoPostural => _dateForAvaliacaoPostural;
  bool hasDateForAvaliacaoPostural() => _dateForAvaliacaoPostural != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "fotoFrontal" field.
  String? _fotoFrontal;
  String get fotoFrontal => _fotoFrontal ?? '';
  bool hasFotoFrontal() => _fotoFrontal != null;

  // "obsFotoFrontal" field.
  String? _obsFotoFrontal;
  String get obsFotoFrontal => _obsFotoFrontal ?? '';
  bool hasObsFotoFrontal() => _obsFotoFrontal != null;

  // "fotoLateral" field.
  String? _fotoLateral;
  String get fotoLateral => _fotoLateral ?? '';
  bool hasFotoLateral() => _fotoLateral != null;

  // "obsFotoLateral" field.
  String? _obsFotoLateral;
  String get obsFotoLateral => _obsFotoLateral ?? '';
  bool hasObsFotoLateral() => _obsFotoLateral != null;

  // "fotoPosterior" field.
  String? _fotoPosterior;
  String get fotoPosterior => _fotoPosterior ?? '';
  bool hasFotoPosterior() => _fotoPosterior != null;

  // "obsFotoPosterior" field.
  String? _obsFotoPosterior;
  String get obsFotoPosterior => _obsFotoPosterior ?? '';
  bool hasObsFotoPosterior() => _obsFotoPosterior != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dateForAvaliacaoPostural =
        snapshotData['dateForAvaliacaoPostural'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _fotoFrontal = snapshotData['fotoFrontal'] as String?;
    _obsFotoFrontal = snapshotData['obsFotoFrontal'] as String?;
    _fotoLateral = snapshotData['fotoLateral'] as String?;
    _obsFotoLateral = snapshotData['obsFotoLateral'] as String?;
    _fotoPosterior = snapshotData['fotoPosterior'] as String?;
    _obsFotoPosterior = snapshotData['obsFotoPosterior'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('avaliacaoPostural')
          : FirebaseFirestore.instance.collectionGroup('avaliacaoPostural');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('avaliacaoPostural').doc(id);

  static Stream<AvaliacaoPosturalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliacaoPosturalRecord.fromSnapshot(s));

  static Future<AvaliacaoPosturalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AvaliacaoPosturalRecord.fromSnapshot(s));

  static AvaliacaoPosturalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliacaoPosturalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliacaoPosturalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliacaoPosturalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliacaoPosturalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliacaoPosturalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliacaoPosturalRecordData({
  DateTime? dateForAvaliacaoPostural,
  String? uid,
  String? fotoFrontal,
  String? obsFotoFrontal,
  String? fotoLateral,
  String? obsFotoLateral,
  String? fotoPosterior,
  String? obsFotoPosterior,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dateForAvaliacaoPostural': dateForAvaliacaoPostural,
      'uid': uid,
      'fotoFrontal': fotoFrontal,
      'obsFotoFrontal': obsFotoFrontal,
      'fotoLateral': fotoLateral,
      'obsFotoLateral': obsFotoLateral,
      'fotoPosterior': fotoPosterior,
      'obsFotoPosterior': obsFotoPosterior,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliacaoPosturalRecordDocumentEquality
    implements Equality<AvaliacaoPosturalRecord> {
  const AvaliacaoPosturalRecordDocumentEquality();

  @override
  bool equals(AvaliacaoPosturalRecord? e1, AvaliacaoPosturalRecord? e2) {
    return e1?.dateForAvaliacaoPostural == e2?.dateForAvaliacaoPostural &&
        e1?.uid == e2?.uid &&
        e1?.fotoFrontal == e2?.fotoFrontal &&
        e1?.obsFotoFrontal == e2?.obsFotoFrontal &&
        e1?.fotoLateral == e2?.fotoLateral &&
        e1?.obsFotoLateral == e2?.obsFotoLateral &&
        e1?.fotoPosterior == e2?.fotoPosterior &&
        e1?.obsFotoPosterior == e2?.obsFotoPosterior;
  }

  @override
  int hash(AvaliacaoPosturalRecord? e) => const ListEquality().hash([
        e?.dateForAvaliacaoPostural,
        e?.uid,
        e?.fotoFrontal,
        e?.obsFotoFrontal,
        e?.fotoLateral,
        e?.obsFotoLateral,
        e?.fotoPosterior,
        e?.obsFotoPosterior
      ]);

  @override
  bool isValidKey(Object? o) => o is AvaliacaoPosturalRecord;
}
