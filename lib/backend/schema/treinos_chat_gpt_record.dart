import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosChatGptRecord extends FirestoreRecord {
  TreinosChatGptRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "condicao" field.
  String? _condicao;
  String get condicao => _condicao ?? '';
  bool hasCondicao() => _condicao != null;

  // "ficha" field.
  String? _ficha;
  String get ficha => _ficha ?? '';
  bool hasFicha() => _ficha != null;

  // "diasparaRealizar" field.
  List<String>? _diasparaRealizar;
  List<String> get diasparaRealizar => _diasparaRealizar ?? const [];
  bool hasDiasparaRealizar() => _diasparaRealizar != null;

  // "treinoCardio" field.
  List<String>? _treinoCardio;
  List<String> get treinoCardio => _treinoCardio ?? const [];
  bool hasTreinoCardio() => _treinoCardio != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  bool hasTreinos() => _treinos != null;

  // "nivel" field.
  String? _nivel;
  String get nivel => _nivel ?? '';
  bool hasNivel() => _nivel != null;

  // "tempo" field.
  String? _tempo;
  String get tempo => _tempo ?? '';
  bool hasTempo() => _tempo != null;

  // "recomendadoPeloChatGPT" field.
  bool? _recomendadoPeloChatGPT;
  bool get recomendadoPeloChatGPT => _recomendadoPeloChatGPT ?? false;
  bool hasRecomendadoPeloChatGPT() => _recomendadoPeloChatGPT != null;

  // "fotoDoTreino" field.
  String? _fotoDoTreino;
  String get fotoDoTreino => _fotoDoTreino ?? '';
  bool hasFotoDoTreino() => _fotoDoTreino != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _condicao = snapshotData['condicao'] as String?;
    _ficha = snapshotData['ficha'] as String?;
    _diasparaRealizar = getDataList(snapshotData['diasparaRealizar']);
    _treinoCardio = getDataList(snapshotData['treinoCardio']);
    _treinos = getDataList(snapshotData['treinos']);
    _nivel = snapshotData['nivel'] as String?;
    _tempo = snapshotData['tempo'] as String?;
    _recomendadoPeloChatGPT = snapshotData['recomendadoPeloChatGPT'] as bool?;
    _fotoDoTreino = snapshotData['fotoDoTreino'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinosChatGpt');

  static Stream<TreinosChatGptRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosChatGptRecord.fromSnapshot(s));

  static Future<TreinosChatGptRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinosChatGptRecord.fromSnapshot(s));

  static TreinosChatGptRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosChatGptRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosChatGptRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosChatGptRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosChatGptRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosChatGptRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosChatGptRecordData({
  String? name,
  String? description,
  String? condicao,
  String? ficha,
  String? nivel,
  String? tempo,
  bool? recomendadoPeloChatGPT,
  String? fotoDoTreino,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'condicao': condicao,
      'ficha': ficha,
      'nivel': nivel,
      'tempo': tempo,
      'recomendadoPeloChatGPT': recomendadoPeloChatGPT,
      'fotoDoTreino': fotoDoTreino,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinosChatGptRecordDocumentEquality
    implements Equality<TreinosChatGptRecord> {
  const TreinosChatGptRecordDocumentEquality();

  @override
  bool equals(TreinosChatGptRecord? e1, TreinosChatGptRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.condicao == e2?.condicao &&
        e1?.ficha == e2?.ficha &&
        listEquality.equals(e1?.diasparaRealizar, e2?.diasparaRealizar) &&
        listEquality.equals(e1?.treinoCardio, e2?.treinoCardio) &&
        listEquality.equals(e1?.treinos, e2?.treinos) &&
        e1?.nivel == e2?.nivel &&
        e1?.tempo == e2?.tempo &&
        e1?.recomendadoPeloChatGPT == e2?.recomendadoPeloChatGPT &&
        e1?.fotoDoTreino == e2?.fotoDoTreino;
  }

  @override
  int hash(TreinosChatGptRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.condicao,
        e?.ficha,
        e?.diasparaRealizar,
        e?.treinoCardio,
        e?.treinos,
        e?.nivel,
        e?.tempo,
        e?.recomendadoPeloChatGPT,
        e?.fotoDoTreino
      ]);

  @override
  bool isValidKey(Object? o) => o is TreinosChatGptRecord;
}
