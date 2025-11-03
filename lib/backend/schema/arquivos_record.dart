import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArquivosRecord extends FirestoreRecord {
  ArquivosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "arquivos" field.
  String? _arquivos;
  String get arquivos => _arquivos ?? '';
  bool hasArquivos() => _arquivos != null;

  // "fotos" field.
  String? _fotos;
  String get fotos => _fotos ?? '';
  bool hasFotos() => _fotos != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _arquivos = snapshotData['arquivos'] as String?;
    _fotos = snapshotData['fotos'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('arquivos')
          : FirebaseFirestore.instance.collectionGroup('arquivos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('arquivos').doc(id);

  static Stream<ArquivosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArquivosRecord.fromSnapshot(s));

  static Future<ArquivosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArquivosRecord.fromSnapshot(s));

  static ArquivosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArquivosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArquivosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArquivosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArquivosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArquivosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArquivosRecordData({
  String? nome,
  DateTime? data,
  String? arquivos,
  String? fotos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'data': data,
      'arquivos': arquivos,
      'fotos': fotos,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArquivosRecordDocumentEquality implements Equality<ArquivosRecord> {
  const ArquivosRecordDocumentEquality();

  @override
  bool equals(ArquivosRecord? e1, ArquivosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.data == e2?.data &&
        e1?.arquivos == e2?.arquivos &&
        e1?.fotos == e2?.fotos;
  }

  @override
  int hash(ArquivosRecord? e) =>
      const ListEquality().hash([e?.nome, e?.data, e?.arquivos, e?.fotos]);

  @override
  bool isValidKey(Object? o) => o is ArquivosRecord;
}
