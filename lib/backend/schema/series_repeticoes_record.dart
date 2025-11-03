import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeriesRepeticoesRecord extends FirestoreRecord {
  SeriesRepeticoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  bool hasTreino() => _treino != null;

  // "seriesRep" field.
  String? _seriesRep;
  String get seriesRep => _seriesRep ?? '';
  bool hasSeriesRep() => _seriesRep != null;

  // "carga" field.
  String? _carga;
  String get carga => _carga ?? '';
  bool hasCarga() => _carga != null;

  // "intervalo" field.
  String? _intervalo;
  String get intervalo => _intervalo ?? '';
  bool hasIntervalo() => _intervalo != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "uidTreinos" field.
  String? _uidTreinos;
  String get uidTreinos => _uidTreinos ?? '';
  bool hasUidTreinos() => _uidTreinos != null;

  // "cargasList" field.
  List<String>? _cargasList;
  List<String> get cargasList => _cargasList ?? const [];
  bool hasCargasList() => _cargasList != null;

  // "velocidade" field.
  String? _velocidade;
  String get velocidade => _velocidade ?? '';
  bool hasVelocidade() => _velocidade != null;

  // "pace" field.
  String? _pace;
  String get pace => _pace ?? '';
  bool hasPace() => _pace != null;

  // "distancia" field.
  String? _distancia;
  String get distancia => _distancia ?? '';
  bool hasDistancia() => _distancia != null;

  // "tempo" field.
  String? _tempo;
  String get tempo => _tempo ?? '';
  bool hasTempo() => _tempo != null;

  // "inclinacao" field.
  String? _inclinacao;
  String get inclinacao => _inclinacao ?? '';
  bool hasInclinacao() => _inclinacao != null;

  // "cadencia" field.
  String? _cadencia;
  String get cadencia => _cadencia ?? '';
  bool hasCadencia() => _cadencia != null;

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  bool hasTreinos() => _treinos != null;

  // "seriesReps" field.
  List<String>? _seriesReps;
  List<String> get seriesReps => _seriesReps ?? const [];
  bool hasSeriesReps() => _seriesReps != null;

  // "intervalos" field.
  List<String>? _intervalos;
  List<String> get intervalos => _intervalos ?? const [];
  bool hasIntervalos() => _intervalos != null;

  // "velocidades" field.
  List<String>? _velocidades;
  List<String> get velocidades => _velocidades ?? const [];
  bool hasVelocidades() => _velocidades != null;

  // "paces" field.
  List<String>? _paces;
  List<String> get paces => _paces ?? const [];
  bool hasPaces() => _paces != null;

  // "distancias" field.
  List<String>? _distancias;
  List<String> get distancias => _distancias ?? const [];
  bool hasDistancias() => _distancias != null;

  // "tempos" field.
  List<String>? _tempos;
  List<String> get tempos => _tempos ?? const [];
  bool hasTempos() => _tempos != null;

  // "inclinacoes" field.
  List<String>? _inclinacoes;
  List<String> get inclinacoes => _inclinacoes ?? const [];
  bool hasInclinacoes() => _inclinacoes != null;

  // "cadencias" field.
  List<String>? _cadencias;
  List<String> get cadencias => _cadencias ?? const [];
  bool hasCadencias() => _cadencias != null;

  // "obss" field.
  List<String>? _obss;
  List<String> get obss => _obss ?? const [];
  bool hasObss() => _obss != null;

  // "cargasType" field.
  EvolucaoDeCargaStruct? _cargasType;
  EvolucaoDeCargaStruct get cargasType =>
      _cargasType ?? EvolucaoDeCargaStruct();
  bool hasCargasType() => _cargasType != null;

  // "protocolo" field.
  String? _protocolo;
  String get protocolo => _protocolo ?? '';
  bool hasProtocolo() => _protocolo != null;

  // "seriesData" field.
  List<SeriesRepStruct>? _seriesData;
  List<SeriesRepStruct> get seriesData => _seriesData ?? const [];
  bool hasSeriesData() => _seriesData != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  bool hasOrdem() => _ordem != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _treino = snapshotData['treino'] as String?;
    _seriesRep = snapshotData['seriesRep'] as String?;
    _carga = snapshotData['carga'] as String?;
    _intervalo = snapshotData['intervalo'] as String?;
    _uid = snapshotData['uid'] as String?;
    _uidTreinos = snapshotData['uidTreinos'] as String?;
    _cargasList = getDataList(snapshotData['cargasList']);
    _velocidade = snapshotData['velocidade'] as String?;
    _pace = snapshotData['pace'] as String?;
    _distancia = snapshotData['distancia'] as String?;
    _tempo = snapshotData['tempo'] as String?;
    _inclinacao = snapshotData['inclinacao'] as String?;
    _cadencia = snapshotData['cadencia'] as String?;
    _obs = snapshotData['obs'] as String?;
    _treinos = getDataList(snapshotData['treinos']);
    _seriesReps = getDataList(snapshotData['seriesReps']);
    _intervalos = getDataList(snapshotData['intervalos']);
    _velocidades = getDataList(snapshotData['velocidades']);
    _paces = getDataList(snapshotData['paces']);
    _distancias = getDataList(snapshotData['distancias']);
    _tempos = getDataList(snapshotData['tempos']);
    _inclinacoes = getDataList(snapshotData['inclinacoes']);
    _cadencias = getDataList(snapshotData['cadencias']);
    _obss = getDataList(snapshotData['obss']);
    _cargasType = snapshotData['cargasType'] is EvolucaoDeCargaStruct
        ? snapshotData['cargasType']
        : EvolucaoDeCargaStruct.maybeFromMap(snapshotData['cargasType']);
    _protocolo = snapshotData['protocolo'] as String?;
    _seriesData = getStructList(
      snapshotData['seriesData'],
      SeriesRepStruct.fromMap,
    );
    _ordem = castToType<int>(snapshotData['ordem']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seriesRepeticoes')
          : FirebaseFirestore.instance.collectionGroup('seriesRepeticoes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('seriesRepeticoes').doc(id);

  static Stream<SeriesRepeticoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeriesRepeticoesRecord.fromSnapshot(s));

  static Future<SeriesRepeticoesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SeriesRepeticoesRecord.fromSnapshot(s));

  static SeriesRepeticoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeriesRepeticoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeriesRepeticoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeriesRepeticoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeriesRepeticoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeriesRepeticoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeriesRepeticoesRecordData({
  String? treino,
  String? seriesRep,
  String? carga,
  String? intervalo,
  String? uid,
  String? uidTreinos,
  String? velocidade,
  String? pace,
  String? distancia,
  String? tempo,
  String? inclinacao,
  String? cadencia,
  String? obs,
  EvolucaoDeCargaStruct? cargasType,
  String? protocolo,
  int? ordem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treino': treino,
      'seriesRep': seriesRep,
      'carga': carga,
      'intervalo': intervalo,
      'uid': uid,
      'uidTreinos': uidTreinos,
      'velocidade': velocidade,
      'pace': pace,
      'distancia': distancia,
      'tempo': tempo,
      'inclinacao': inclinacao,
      'cadencia': cadencia,
      'obs': obs,
      'cargasType': EvolucaoDeCargaStruct().toMap(),
      'protocolo': protocolo,
      'ordem': ordem,
    }.withoutNulls,
  );

  // Handle nested data for "cargasType" field.
  addEvolucaoDeCargaStructData(firestoreData, cargasType, 'cargasType');

  return firestoreData;
}

class SeriesRepeticoesRecordDocumentEquality
    implements Equality<SeriesRepeticoesRecord> {
  const SeriesRepeticoesRecordDocumentEquality();

  @override
  bool equals(SeriesRepeticoesRecord? e1, SeriesRepeticoesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.treino == e2?.treino &&
        e1?.seriesRep == e2?.seriesRep &&
        e1?.carga == e2?.carga &&
        e1?.intervalo == e2?.intervalo &&
        e1?.uid == e2?.uid &&
        e1?.uidTreinos == e2?.uidTreinos &&
        listEquality.equals(e1?.cargasList, e2?.cargasList) &&
        e1?.velocidade == e2?.velocidade &&
        e1?.pace == e2?.pace &&
        e1?.distancia == e2?.distancia &&
        e1?.tempo == e2?.tempo &&
        e1?.inclinacao == e2?.inclinacao &&
        e1?.cadencia == e2?.cadencia &&
        e1?.obs == e2?.obs &&
        listEquality.equals(e1?.treinos, e2?.treinos) &&
        listEquality.equals(e1?.seriesReps, e2?.seriesReps) &&
        listEquality.equals(e1?.intervalos, e2?.intervalos) &&
        listEquality.equals(e1?.velocidades, e2?.velocidades) &&
        listEquality.equals(e1?.paces, e2?.paces) &&
        listEquality.equals(e1?.distancias, e2?.distancias) &&
        listEquality.equals(e1?.tempos, e2?.tempos) &&
        listEquality.equals(e1?.inclinacoes, e2?.inclinacoes) &&
        listEquality.equals(e1?.cadencias, e2?.cadencias) &&
        listEquality.equals(e1?.obss, e2?.obss) &&
        e1?.cargasType == e2?.cargasType &&
        e1?.protocolo == e2?.protocolo &&
        listEquality.equals(e1?.seriesData, e2?.seriesData) &&
        e1?.ordem == e2?.ordem;
  }

  @override
  int hash(SeriesRepeticoesRecord? e) => const ListEquality().hash([
        e?.treino,
        e?.seriesRep,
        e?.carga,
        e?.intervalo,
        e?.uid,
        e?.uidTreinos,
        e?.cargasList,
        e?.velocidade,
        e?.pace,
        e?.distancia,
        e?.tempo,
        e?.inclinacao,
        e?.cadencia,
        e?.obs,
        e?.treinos,
        e?.seriesReps,
        e?.intervalos,
        e?.velocidades,
        e?.paces,
        e?.distancias,
        e?.tempos,
        e?.inclinacoes,
        e?.cadencias,
        e?.obss,
        e?.cargasType,
        e?.protocolo,
        e?.seriesData,
        e?.ordem
      ]);

  @override
  bool isValidKey(Object? o) => o is SeriesRepeticoesRecord;
}
