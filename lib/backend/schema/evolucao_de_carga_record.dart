import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvolucaoDeCargaRecord extends FirestoreRecord {
  EvolucaoDeCargaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeDoTreino" field.
  String? _nomeDoTreino;
  String get nomeDoTreino => _nomeDoTreino ?? '';
  bool hasNomeDoTreino() => _nomeDoTreino != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "uidTreinos" field.
  String? _uidTreinos;
  String get uidTreinos => _uidTreinos ?? '';
  bool hasUidTreinos() => _uidTreinos != null;

  // "evolucao" field.
  int? _evolucao;
  int get evolucao => _evolucao ?? 0;
  bool hasEvolucao() => _evolucao != null;

  // "desevolucao" field.
  int? _desevolucao;
  int get desevolucao => _desevolucao ?? 0;
  bool hasDesevolucao() => _desevolucao != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeDoTreino = snapshotData['nomeDoTreino'] as String?;
    _uid = snapshotData['uid'] as String?;
    _uidTreinos = snapshotData['uidTreinos'] as String?;
    _evolucao = castToType<int>(snapshotData['evolucao']);
    _desevolucao = castToType<int>(snapshotData['desevolucao']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('evolucaoDeCarga')
          : FirebaseFirestore.instance.collectionGroup('evolucaoDeCarga');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('evolucaoDeCarga').doc(id);

  static Stream<EvolucaoDeCargaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvolucaoDeCargaRecord.fromSnapshot(s));

  static Future<EvolucaoDeCargaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvolucaoDeCargaRecord.fromSnapshot(s));

  static EvolucaoDeCargaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvolucaoDeCargaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvolucaoDeCargaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvolucaoDeCargaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvolucaoDeCargaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvolucaoDeCargaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvolucaoDeCargaRecordData({
  String? nomeDoTreino,
  String? uid,
  String? uidTreinos,
  int? evolucao,
  int? desevolucao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDoTreino': nomeDoTreino,
      'uid': uid,
      'uidTreinos': uidTreinos,
      'evolucao': evolucao,
      'desevolucao': desevolucao,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvolucaoDeCargaRecordDocumentEquality
    implements Equality<EvolucaoDeCargaRecord> {
  const EvolucaoDeCargaRecordDocumentEquality();

  @override
  bool equals(EvolucaoDeCargaRecord? e1, EvolucaoDeCargaRecord? e2) {
    return e1?.nomeDoTreino == e2?.nomeDoTreino &&
        e1?.uid == e2?.uid &&
        e1?.uidTreinos == e2?.uidTreinos &&
        e1?.evolucao == e2?.evolucao &&
        e1?.desevolucao == e2?.desevolucao;
  }

  @override
  int hash(EvolucaoDeCargaRecord? e) => const ListEquality().hash(
      [e?.nomeDoTreino, e?.uid, e?.uidTreinos, e?.evolucao, e?.desevolucao]);

  @override
  bool isValidKey(Object? o) => o is EvolucaoDeCargaRecord;
}
