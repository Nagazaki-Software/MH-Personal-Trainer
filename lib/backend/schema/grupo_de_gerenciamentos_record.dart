import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoDeGerenciamentosRecord extends FirestoreRecord {
  GrupoDeGerenciamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeDoGrupo" field.
  String? _nomeDoGrupo;
  String get nomeDoGrupo => _nomeDoGrupo ?? '';
  bool hasNomeDoGrupo() => _nomeDoGrupo != null;

  // "descrevadogrpou" field.
  String? _descrevadogrpou;
  String get descrevadogrpou => _descrevadogrpou ?? '';
  bool hasDescrevadogrpou() => _descrevadogrpou != null;

  // "niveldodgrupo" field.
  String? _niveldodgrupo;
  String get niveldodgrupo => _niveldodgrupo ?? '';
  bool hasNiveldodgrupo() => _niveldodgrupo != null;

  // "frequenciadetreino" field.
  String? _frequenciadetreino;
  String get frequenciadetreino => _frequenciadetreino ?? '';
  bool hasFrequenciadetreino() => _frequenciadetreino != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "fotodogrupo" field.
  String? _fotodogrupo;
  String get fotodogrupo => _fotodogrupo ?? '';
  bool hasFotodogrupo() => _fotodogrupo != null;

  // "diadasemana" field.
  List<String>? _diadasemana;
  List<String> get diadasemana => _diadasemana ?? const [];
  bool hasDiadasemana() => _diadasemana != null;

  // "uidlist" field.
  List<String>? _uidlist;
  List<String> get uidlist => _uidlist ?? const [];
  bool hasUidlist() => _uidlist != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeDoGrupo = snapshotData['nomeDoGrupo'] as String?;
    _descrevadogrpou = snapshotData['descrevadogrpou'] as String?;
    _niveldodgrupo = snapshotData['niveldodgrupo'] as String?;
    _frequenciadetreino = snapshotData['frequenciadetreino'] as String?;
    _horario = snapshotData['horario'] as String?;
    _users = getDataList(snapshotData['users']);
    _fotodogrupo = snapshotData['fotodogrupo'] as String?;
    _diadasemana = getDataList(snapshotData['diadasemana']);
    _uidlist = getDataList(snapshotData['uidlist']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('grupo_de_gerenciamentos')
          : FirebaseFirestore.instance
              .collectionGroup('grupo_de_gerenciamentos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('grupo_de_gerenciamentos').doc(id);

  static Stream<GrupoDeGerenciamentosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => GrupoDeGerenciamentosRecord.fromSnapshot(s));

  static Future<GrupoDeGerenciamentosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GrupoDeGerenciamentosRecord.fromSnapshot(s));

  static GrupoDeGerenciamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GrupoDeGerenciamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GrupoDeGerenciamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GrupoDeGerenciamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GrupoDeGerenciamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GrupoDeGerenciamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGrupoDeGerenciamentosRecordData({
  String? nomeDoGrupo,
  String? descrevadogrpou,
  String? niveldodgrupo,
  String? frequenciadetreino,
  String? horario,
  String? fotodogrupo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDoGrupo': nomeDoGrupo,
      'descrevadogrpou': descrevadogrpou,
      'niveldodgrupo': niveldodgrupo,
      'frequenciadetreino': frequenciadetreino,
      'horario': horario,
      'fotodogrupo': fotodogrupo,
    }.withoutNulls,
  );

  return firestoreData;
}

class GrupoDeGerenciamentosRecordDocumentEquality
    implements Equality<GrupoDeGerenciamentosRecord> {
  const GrupoDeGerenciamentosRecordDocumentEquality();

  @override
  bool equals(
      GrupoDeGerenciamentosRecord? e1, GrupoDeGerenciamentosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeDoGrupo == e2?.nomeDoGrupo &&
        e1?.descrevadogrpou == e2?.descrevadogrpou &&
        e1?.niveldodgrupo == e2?.niveldodgrupo &&
        e1?.frequenciadetreino == e2?.frequenciadetreino &&
        e1?.horario == e2?.horario &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.fotodogrupo == e2?.fotodogrupo &&
        listEquality.equals(e1?.diadasemana, e2?.diadasemana) &&
        listEquality.equals(e1?.uidlist, e2?.uidlist);
  }

  @override
  int hash(GrupoDeGerenciamentosRecord? e) => const ListEquality().hash([
        e?.nomeDoGrupo,
        e?.descrevadogrpou,
        e?.niveldodgrupo,
        e?.frequenciadetreino,
        e?.horario,
        e?.users,
        e?.fotodogrupo,
        e?.diadasemana,
        e?.uidlist
      ]);

  @override
  bool isValidKey(Object? o) => o is GrupoDeGerenciamentosRecord;
}
