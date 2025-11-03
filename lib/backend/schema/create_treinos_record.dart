import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateTreinosRecord extends FirestoreRecord {
  CreateTreinosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "diaDoTreino" field.
  String? _diaDoTreino;
  String get diaDoTreino => _diaDoTreino ?? '';
  bool hasDiaDoTreino() => _diaDoTreino != null;

  // "nomeDoTreino" field.
  String? _nomeDoTreino;
  String get nomeDoTreino => _nomeDoTreino ?? '';
  bool hasNomeDoTreino() => _nomeDoTreino != null;

  // "obsInstrucao" field.
  String? _obsInstrucao;
  String get obsInstrucao => _obsInstrucao ?? '';
  bool hasObsInstrucao() => _obsInstrucao != null;

  // "yourName" field.
  String? _yourName;
  String get yourName => _yourName ?? '';
  bool hasYourName() => _yourName != null;

  // "treino" field.
  List<String>? _treino;
  List<String> get treino => _treino ?? const [];
  bool hasTreino() => _treino != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "treinoVideo" field.
  String? _treinoVideo;
  String get treinoVideo => _treinoVideo ?? '';
  bool hasTreinoVideo() => _treinoVideo != null;

  // "treinoNoList" field.
  String? _treinoNoList;
  String get treinoNoList => _treinoNoList ?? '';
  bool hasTreinoNoList() => _treinoNoList != null;

  // "createTreinosList" field.
  List<DocumentReference>? _createTreinosList;
  List<DocumentReference> get createTreinosList =>
      _createTreinosList ?? const [];
  bool hasCreateTreinosList() => _createTreinosList != null;

  // "terminou" field.
  bool? _terminou;
  bool get terminou => _terminou ?? false;
  bool hasTerminou() => _terminou != null;

  // "treinoVideos" field.
  List<String>? _treinoVideos;
  List<String> get treinoVideos => _treinoVideos ?? const [];
  bool hasTreinoVideos() => _treinoVideos != null;

  // "nomeDaRotina" field.
  String? _nomeDaRotina;
  String get nomeDaRotina => _nomeDaRotina ?? '';
  bool hasNomeDaRotina() => _nomeDaRotina != null;

  // "objetivoDaRotina" field.
  String? _objetivoDaRotina;
  String get objetivoDaRotina => _objetivoDaRotina ?? '';
  bool hasObjetivoDaRotina() => _objetivoDaRotina != null;

  // "dificuldadeDaRotina" field.
  String? _dificuldadeDaRotina;
  String get dificuldadeDaRotina => _dificuldadeDaRotina ?? '';
  bool hasDificuldadeDaRotina() => _dificuldadeDaRotina != null;

  // "obsInstrucaoDaRotina" field.
  String? _obsInstrucaoDaRotina;
  String get obsInstrucaoDaRotina => _obsInstrucaoDaRotina ?? '';
  bool hasObsInstrucaoDaRotina() => _obsInstrucaoDaRotina != null;

  // "daRotina" field.
  bool? _daRotina;
  bool get daRotina => _daRotina ?? false;
  bool hasDaRotina() => _daRotina != null;

  // "dosTreinos" field.
  bool? _dosTreinos;
  bool get dosTreinos => _dosTreinos ?? false;
  bool hasDosTreinos() => _dosTreinos != null;

  // "seriesRep" field.
  List<double>? _seriesRep;
  List<double> get seriesRep => _seriesRep ?? const [];
  bool hasSeriesRep() => _seriesRep != null;

  // "carga" field.
  List<double>? _carga;
  List<double> get carga => _carga ?? const [];
  bool hasCarga() => _carga != null;

  // "intervalo" field.
  List<double>? _intervalo;
  List<double> get intervalo => _intervalo ?? const [];
  bool hasIntervalo() => _intervalo != null;

  // "imgUser" field.
  String? _imgUser;
  String get imgUser => _imgUser ?? '';
  bool hasImgUser() => _imgUser != null;

  // "codigoDoPersonal" field.
  int? _codigoDoPersonal;
  int get codigoDoPersonal => _codigoDoPersonal ?? 0;
  bool hasCodigoDoPersonal() => _codigoDoPersonal != null;

  // "terminoDoTreino" field.
  DateTime? _terminoDoTreino;
  DateTime? get terminoDoTreino => _terminoDoTreino;
  bool hasTerminoDoTreino() => _terminoDoTreino != null;

  // "tempoDeTreino" field.
  int? _tempoDeTreino;
  int get tempoDeTreino => _tempoDeTreino ?? 0;
  bool hasTempoDeTreino() => _tempoDeTreino != null;

  // "horaDeInicioDoTreino" field.
  DateTime? _horaDeInicioDoTreino;
  DateTime? get horaDeInicioDoTreino => _horaDeInicioDoTreino;
  bool hasHoraDeInicioDoTreino() => _horaDeInicioDoTreino != null;

  // "horaDeTerminoDoTreino" field.
  DateTime? _horaDeTerminoDoTreino;
  DateTime? get horaDeTerminoDoTreino => _horaDeTerminoDoTreino;
  bool hasHoraDeTerminoDoTreino() => _horaDeTerminoDoTreino != null;

  // "comentarioDoAluno" field.
  String? _comentarioDoAluno;
  String get comentarioDoAluno => _comentarioDoAluno ?? '';
  bool hasComentarioDoAluno() => _comentarioDoAluno != null;

  // "atividadeDoAluno" field.
  String? _atividadeDoAluno;
  String get atividadeDoAluno => _atividadeDoAluno ?? '';
  bool hasAtividadeDoAluno() => _atividadeDoAluno != null;

  // "arquivos" field.
  bool? _arquivos;
  bool get arquivos => _arquivos ?? false;
  bool hasArquivos() => _arquivos != null;

  // "uidTreinos" field.
  String? _uidTreinos;
  String get uidTreinos => _uidTreinos ?? '';
  bool hasUidTreinos() => _uidTreinos != null;

  // "dateTerminou" field.
  DateTime? _dateTerminou;
  DateTime? get dateTerminou => _dateTerminou;
  bool hasDateTerminou() => _dateTerminou != null;

  // "cargasSeries" field.
  String? _cargasSeries;
  String get cargasSeries => _cargasSeries ?? '';
  bool hasCargasSeries() => _cargasSeries != null;

  // "terminarEmDaRotina" field.
  DateTime? _terminarEmDaRotina;
  DateTime? get terminarEmDaRotina => _terminarEmDaRotina;
  bool hasTerminarEmDaRotina() => _terminarEmDaRotina != null;

  // "comecaEmDaRotina" field.
  DateTime? _comecaEmDaRotina;
  DateTime? get comecaEmDaRotina => _comecaEmDaRotina;
  bool hasComecaEmDaRotina() => _comecaEmDaRotina != null;

  // "evolucaoDeCarga" field.
  int? _evolucaoDeCarga;
  int get evolucaoDeCarga => _evolucaoDeCarga ?? 0;
  bool hasEvolucaoDeCarga() => _evolucaoDeCarga != null;

  // "treinoBaixado" field.
  String? _treinoBaixado;
  String get treinoBaixado => _treinoBaixado ?? '';
  bool hasTreinoBaixado() => _treinoBaixado != null;

  // "treinoCompletado" field.
  List<String>? _treinoCompletado;
  List<String> get treinoCompletado => _treinoCompletado ?? const [];
  bool hasTreinoCompletado() => _treinoCompletado != null;

  // "treinosSeries" field.
  List<String>? _treinosSeries;
  List<String> get treinosSeries => _treinosSeries ?? const [];
  bool hasTreinosSeries() => _treinosSeries != null;

  // "seriesRepeticoes" field.
  List<String>? _seriesRepeticoes;
  List<String> get seriesRepeticoes => _seriesRepeticoes ?? const [];
  bool hasSeriesRepeticoes() => _seriesRepeticoes != null;

  // "verifiqueSeriesRep" field.
  List<VerifiqueTreinosStruct>? _verifiqueSeriesRep;
  List<VerifiqueTreinosStruct> get verifiqueSeriesRep =>
      _verifiqueSeriesRep ?? const [];
  bool hasVerifiqueSeriesRep() => _verifiqueSeriesRep != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _diaDoTreino = snapshotData['diaDoTreino'] as String?;
    _nomeDoTreino = snapshotData['nomeDoTreino'] as String?;
    _obsInstrucao = snapshotData['obsInstrucao'] as String?;
    _yourName = snapshotData['yourName'] as String?;
    _treino = getDataList(snapshotData['treino']);
    _uid = snapshotData['uid'] as String?;
    _treinoVideo = snapshotData['treinoVideo'] as String?;
    _treinoNoList = snapshotData['treinoNoList'] as String?;
    _createTreinosList = getDataList(snapshotData['createTreinosList']);
    _terminou = snapshotData['terminou'] as bool?;
    _treinoVideos = getDataList(snapshotData['treinoVideos']);
    _nomeDaRotina = snapshotData['nomeDaRotina'] as String?;
    _objetivoDaRotina = snapshotData['objetivoDaRotina'] as String?;
    _dificuldadeDaRotina = snapshotData['dificuldadeDaRotina'] as String?;
    _obsInstrucaoDaRotina = snapshotData['obsInstrucaoDaRotina'] as String?;
    _daRotina = snapshotData['daRotina'] as bool?;
    _dosTreinos = snapshotData['dosTreinos'] as bool?;
    _seriesRep = getDataList(snapshotData['seriesRep']);
    _carga = getDataList(snapshotData['carga']);
    _intervalo = getDataList(snapshotData['intervalo']);
    _imgUser = snapshotData['imgUser'] as String?;
    _codigoDoPersonal = castToType<int>(snapshotData['codigoDoPersonal']);
    _terminoDoTreino = snapshotData['terminoDoTreino'] as DateTime?;
    _tempoDeTreino = castToType<int>(snapshotData['tempoDeTreino']);
    _horaDeInicioDoTreino = snapshotData['horaDeInicioDoTreino'] as DateTime?;
    _horaDeTerminoDoTreino = snapshotData['horaDeTerminoDoTreino'] as DateTime?;
    _comentarioDoAluno = snapshotData['comentarioDoAluno'] as String?;
    _atividadeDoAluno = snapshotData['atividadeDoAluno'] as String?;
    _arquivos = snapshotData['arquivos'] as bool?;
    _uidTreinos = snapshotData['uidTreinos'] as String?;
    _dateTerminou = snapshotData['dateTerminou'] as DateTime?;
    _cargasSeries = snapshotData['cargasSeries'] as String?;
    _terminarEmDaRotina = snapshotData['terminarEmDaRotina'] as DateTime?;
    _comecaEmDaRotina = snapshotData['comecaEmDaRotina'] as DateTime?;
    _evolucaoDeCarga = castToType<int>(snapshotData['evolucaoDeCarga']);
    _treinoBaixado = snapshotData['treinoBaixado'] as String?;
    _treinoCompletado = getDataList(snapshotData['treinoCompletado']);
    _treinosSeries = getDataList(snapshotData['treinosSeries']);
    _seriesRepeticoes = getDataList(snapshotData['seriesRepeticoes']);
    _verifiqueSeriesRep = getStructList(
      snapshotData['verifiqueSeriesRep'],
      VerifiqueTreinosStruct.fromMap,
    );
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('createTreinos')
          : FirebaseFirestore.instance.collectionGroup('createTreinos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('createTreinos').doc(id);

  static Stream<CreateTreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CreateTreinosRecord.fromSnapshot(s));

  static Future<CreateTreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CreateTreinosRecord.fromSnapshot(s));

  static CreateTreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CreateTreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CreateTreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CreateTreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CreateTreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CreateTreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCreateTreinosRecordData({
  String? diaDoTreino,
  String? nomeDoTreino,
  String? obsInstrucao,
  String? yourName,
  String? uid,
  String? treinoVideo,
  String? treinoNoList,
  bool? terminou,
  String? nomeDaRotina,
  String? objetivoDaRotina,
  String? dificuldadeDaRotina,
  String? obsInstrucaoDaRotina,
  bool? daRotina,
  bool? dosTreinos,
  String? imgUser,
  int? codigoDoPersonal,
  DateTime? terminoDoTreino,
  int? tempoDeTreino,
  DateTime? horaDeInicioDoTreino,
  DateTime? horaDeTerminoDoTreino,
  String? comentarioDoAluno,
  String? atividadeDoAluno,
  bool? arquivos,
  String? uidTreinos,
  DateTime? dateTerminou,
  String? cargasSeries,
  DateTime? terminarEmDaRotina,
  DateTime? comecaEmDaRotina,
  int? evolucaoDeCarga,
  String? treinoBaixado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'diaDoTreino': diaDoTreino,
      'nomeDoTreino': nomeDoTreino,
      'obsInstrucao': obsInstrucao,
      'yourName': yourName,
      'uid': uid,
      'treinoVideo': treinoVideo,
      'treinoNoList': treinoNoList,
      'terminou': terminou,
      'nomeDaRotina': nomeDaRotina,
      'objetivoDaRotina': objetivoDaRotina,
      'dificuldadeDaRotina': dificuldadeDaRotina,
      'obsInstrucaoDaRotina': obsInstrucaoDaRotina,
      'daRotina': daRotina,
      'dosTreinos': dosTreinos,
      'imgUser': imgUser,
      'codigoDoPersonal': codigoDoPersonal,
      'terminoDoTreino': terminoDoTreino,
      'tempoDeTreino': tempoDeTreino,
      'horaDeInicioDoTreino': horaDeInicioDoTreino,
      'horaDeTerminoDoTreino': horaDeTerminoDoTreino,
      'comentarioDoAluno': comentarioDoAluno,
      'atividadeDoAluno': atividadeDoAluno,
      'arquivos': arquivos,
      'uidTreinos': uidTreinos,
      'dateTerminou': dateTerminou,
      'cargasSeries': cargasSeries,
      'terminarEmDaRotina': terminarEmDaRotina,
      'comecaEmDaRotina': comecaEmDaRotina,
      'evolucaoDeCarga': evolucaoDeCarga,
      'treinoBaixado': treinoBaixado,
    }.withoutNulls,
  );

  return firestoreData;
}

class CreateTreinosRecordDocumentEquality
    implements Equality<CreateTreinosRecord> {
  const CreateTreinosRecordDocumentEquality();

  @override
  bool equals(CreateTreinosRecord? e1, CreateTreinosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.diaDoTreino == e2?.diaDoTreino &&
        e1?.nomeDoTreino == e2?.nomeDoTreino &&
        e1?.obsInstrucao == e2?.obsInstrucao &&
        e1?.yourName == e2?.yourName &&
        listEquality.equals(e1?.treino, e2?.treino) &&
        e1?.uid == e2?.uid &&
        e1?.treinoVideo == e2?.treinoVideo &&
        e1?.treinoNoList == e2?.treinoNoList &&
        listEquality.equals(e1?.createTreinosList, e2?.createTreinosList) &&
        e1?.terminou == e2?.terminou &&
        listEquality.equals(e1?.treinoVideos, e2?.treinoVideos) &&
        e1?.nomeDaRotina == e2?.nomeDaRotina &&
        e1?.objetivoDaRotina == e2?.objetivoDaRotina &&
        e1?.dificuldadeDaRotina == e2?.dificuldadeDaRotina &&
        e1?.obsInstrucaoDaRotina == e2?.obsInstrucaoDaRotina &&
        e1?.daRotina == e2?.daRotina &&
        e1?.dosTreinos == e2?.dosTreinos &&
        listEquality.equals(e1?.seriesRep, e2?.seriesRep) &&
        listEquality.equals(e1?.carga, e2?.carga) &&
        listEquality.equals(e1?.intervalo, e2?.intervalo) &&
        e1?.imgUser == e2?.imgUser &&
        e1?.codigoDoPersonal == e2?.codigoDoPersonal &&
        e1?.terminoDoTreino == e2?.terminoDoTreino &&
        e1?.tempoDeTreino == e2?.tempoDeTreino &&
        e1?.horaDeInicioDoTreino == e2?.horaDeInicioDoTreino &&
        e1?.horaDeTerminoDoTreino == e2?.horaDeTerminoDoTreino &&
        e1?.comentarioDoAluno == e2?.comentarioDoAluno &&
        e1?.atividadeDoAluno == e2?.atividadeDoAluno &&
        e1?.arquivos == e2?.arquivos &&
        e1?.uidTreinos == e2?.uidTreinos &&
        e1?.dateTerminou == e2?.dateTerminou &&
        e1?.cargasSeries == e2?.cargasSeries &&
        e1?.terminarEmDaRotina == e2?.terminarEmDaRotina &&
        e1?.comecaEmDaRotina == e2?.comecaEmDaRotina &&
        e1?.evolucaoDeCarga == e2?.evolucaoDeCarga &&
        e1?.treinoBaixado == e2?.treinoBaixado &&
        listEquality.equals(e1?.treinoCompletado, e2?.treinoCompletado) &&
        listEquality.equals(e1?.treinosSeries, e2?.treinosSeries) &&
        listEquality.equals(e1?.seriesRepeticoes, e2?.seriesRepeticoes) &&
        listEquality.equals(e1?.verifiqueSeriesRep, e2?.verifiqueSeriesRep);
  }

  @override
  int hash(CreateTreinosRecord? e) => const ListEquality().hash([
        e?.diaDoTreino,
        e?.nomeDoTreino,
        e?.obsInstrucao,
        e?.yourName,
        e?.treino,
        e?.uid,
        e?.treinoVideo,
        e?.treinoNoList,
        e?.createTreinosList,
        e?.terminou,
        e?.treinoVideos,
        e?.nomeDaRotina,
        e?.objetivoDaRotina,
        e?.dificuldadeDaRotina,
        e?.obsInstrucaoDaRotina,
        e?.daRotina,
        e?.dosTreinos,
        e?.seriesRep,
        e?.carga,
        e?.intervalo,
        e?.imgUser,
        e?.codigoDoPersonal,
        e?.terminoDoTreino,
        e?.tempoDeTreino,
        e?.horaDeInicioDoTreino,
        e?.horaDeTerminoDoTreino,
        e?.comentarioDoAluno,
        e?.atividadeDoAluno,
        e?.arquivos,
        e?.uidTreinos,
        e?.dateTerminou,
        e?.cargasSeries,
        e?.terminarEmDaRotina,
        e?.comecaEmDaRotina,
        e?.evolucaoDeCarga,
        e?.treinoBaixado,
        e?.treinoCompletado,
        e?.treinosSeries,
        e?.seriesRepeticoes,
        e?.verifiqueSeriesRep
      ]);

  @override
  bool isValidKey(Object? o) => o is CreateTreinosRecord;
}
