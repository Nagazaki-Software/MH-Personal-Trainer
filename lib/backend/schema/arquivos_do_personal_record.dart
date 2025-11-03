import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArquivosDoPersonalRecord extends FirestoreRecord {
  ArquivosDoPersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "arquivos" field.
  String? _arquivos;
  String get arquivos => _arquivos ?? '';
  bool hasArquivos() => _arquivos != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _arquivos = snapshotData['arquivos'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('arquivosDoPersonal')
          : FirebaseFirestore.instance.collectionGroup('arquivosDoPersonal');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('arquivosDoPersonal').doc(id);

  static Stream<ArquivosDoPersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArquivosDoPersonalRecord.fromSnapshot(s));

  static Future<ArquivosDoPersonalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ArquivosDoPersonalRecord.fromSnapshot(s));

  static ArquivosDoPersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArquivosDoPersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArquivosDoPersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArquivosDoPersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArquivosDoPersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArquivosDoPersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArquivosDoPersonalRecordData({
  String? arquivos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'arquivos': arquivos,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArquivosDoPersonalRecordDocumentEquality
    implements Equality<ArquivosDoPersonalRecord> {
  const ArquivosDoPersonalRecordDocumentEquality();

  @override
  bool equals(ArquivosDoPersonalRecord? e1, ArquivosDoPersonalRecord? e2) {
    return e1?.arquivos == e2?.arquivos;
  }

  @override
  int hash(ArquivosDoPersonalRecord? e) =>
      const ListEquality().hash([e?.arquivos]);

  @override
  bool isValidKey(Object? o) => o is ArquivosDoPersonalRecord;
}
