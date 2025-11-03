import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RotinaDeTreinosForAlunosRecord extends FirestoreRecord {
  RotinaDeTreinosForAlunosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameRotina" field.
  String? _nameRotina;
  String get nameRotina => _nameRotina ?? '';
  bool hasNameRotina() => _nameRotina != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "dificuldade" field.
  String? _dificuldade;
  String get dificuldade => _dificuldade ?? '';
  bool hasDificuldade() => _dificuldade != null;

  // "obsInstrucao" field.
  String? _obsInstrucao;
  String get obsInstrucao => _obsInstrucao ?? '';
  bool hasObsInstrucao() => _obsInstrucao != null;

  // "comecaEm" field.
  String? _comecaEm;
  String get comecaEm => _comecaEm ?? '';
  bool hasComecaEm() => _comecaEm != null;

  // "terminaEm" field.
  String? _terminaEm;
  String get terminaEm => _terminaEm ?? '';
  bool hasTerminaEm() => _terminaEm != null;

  // "yourName" field.
  String? _yourName;
  String get yourName => _yourName ?? '';
  bool hasYourName() => _yourName != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  bool hasTreinos() => _treinos != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nameRotina = snapshotData['nameRotina'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _dificuldade = snapshotData['dificuldade'] as String?;
    _obsInstrucao = snapshotData['obsInstrucao'] as String?;
    _comecaEm = snapshotData['comecaEm'] as String?;
    _terminaEm = snapshotData['terminaEm'] as String?;
    _yourName = snapshotData['yourName'] as String?;
    _treinos = getDataList(snapshotData['treinos']);
    _uid = snapshotData['uid'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rotinaDeTreinosForAlunos')
          : FirebaseFirestore.instance
              .collectionGroup('rotinaDeTreinosForAlunos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rotinaDeTreinosForAlunos').doc(id);

  static Stream<RotinaDeTreinosForAlunosRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RotinaDeTreinosForAlunosRecord.fromSnapshot(s));

  static Future<RotinaDeTreinosForAlunosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RotinaDeTreinosForAlunosRecord.fromSnapshot(s));

  static RotinaDeTreinosForAlunosRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RotinaDeTreinosForAlunosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RotinaDeTreinosForAlunosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RotinaDeTreinosForAlunosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RotinaDeTreinosForAlunosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RotinaDeTreinosForAlunosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRotinaDeTreinosForAlunosRecordData({
  String? nameRotina,
  String? objetivo,
  String? dificuldade,
  String? obsInstrucao,
  String? comecaEm,
  String? terminaEm,
  String? yourName,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameRotina': nameRotina,
      'objetivo': objetivo,
      'dificuldade': dificuldade,
      'obsInstrucao': obsInstrucao,
      'comecaEm': comecaEm,
      'terminaEm': terminaEm,
      'yourName': yourName,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class RotinaDeTreinosForAlunosRecordDocumentEquality
    implements Equality<RotinaDeTreinosForAlunosRecord> {
  const RotinaDeTreinosForAlunosRecordDocumentEquality();

  @override
  bool equals(
      RotinaDeTreinosForAlunosRecord? e1, RotinaDeTreinosForAlunosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nameRotina == e2?.nameRotina &&
        e1?.objetivo == e2?.objetivo &&
        e1?.dificuldade == e2?.dificuldade &&
        e1?.obsInstrucao == e2?.obsInstrucao &&
        e1?.comecaEm == e2?.comecaEm &&
        e1?.terminaEm == e2?.terminaEm &&
        e1?.yourName == e2?.yourName &&
        listEquality.equals(e1?.treinos, e2?.treinos) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(RotinaDeTreinosForAlunosRecord? e) => const ListEquality().hash([
        e?.nameRotina,
        e?.objetivo,
        e?.dificuldade,
        e?.obsInstrucao,
        e?.comecaEm,
        e?.terminaEm,
        e?.yourName,
        e?.treinos,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is RotinaDeTreinosForAlunosRecord;
}
