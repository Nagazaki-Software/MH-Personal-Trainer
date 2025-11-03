import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
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

  // "comecaEmDaRotina" field.
  String? _comecaEmDaRotina;
  String get comecaEmDaRotina => _comecaEmDaRotina ?? '';
  bool hasComecaEmDaRotina() => _comecaEmDaRotina != null;

  // "terminaEmDaRotina" field.
  String? _terminaEmDaRotina;
  String get terminaEmDaRotina => _terminaEmDaRotina ?? '';
  bool hasTerminaEmDaRotina() => _terminaEmDaRotina != null;

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

  // "createTreinos" field.
  DocumentReference? _createTreinos;
  DocumentReference? get createTreinos => _createTreinos;
  bool hasCreateTreinos() => _createTreinos != null;

  // "comentarioDoAluno" field.
  String? _comentarioDoAluno;
  String get comentarioDoAluno => _comentarioDoAluno ?? '';
  bool hasComentarioDoAluno() => _comentarioDoAluno != null;

  // "atividadeDoAluno" field.
  String? _atividadeDoAluno;
  String get atividadeDoAluno => _atividadeDoAluno ?? '';
  bool hasAtividadeDoAluno() => _atividadeDoAluno != null;

  // "duracao" field.
  int? _duracao;
  int get duracao => _duracao ?? 0;
  bool hasDuracao() => _duracao != null;

  // "respostaDoProf" field.
  String? _respostaDoProf;
  String get respostaDoProf => _respostaDoProf ?? '';
  bool hasRespostaDoProf() => _respostaDoProf != null;

  // "horaDeTermino" field.
  DateTime? _horaDeTermino;
  DateTime? get horaDeTermino => _horaDeTermino;
  bool hasHoraDeTermino() => _horaDeTermino != null;

  // "dificuldadeDoExercicio" field.
  String? _dificuldadeDoExercicio;
  String get dificuldadeDoExercicio => _dificuldadeDoExercicio ?? '';
  bool hasDificuldadeDoExercicio() => _dificuldadeDoExercicio != null;

  // "progresso" field.
  String? _progresso;
  String get progresso => _progresso ?? '';
  bool hasProgresso() => _progresso != null;

  // "melhoria" field.
  String? _melhoria;
  String get melhoria => _melhoria ?? '';
  bool hasMelhoria() => _melhoria != null;

  // "estrela" field.
  double? _estrela;
  double get estrela => _estrela ?? 0.0;
  bool hasEstrela() => _estrela != null;

  // "energia" field.
  double? _energia;
  double get energia => _energia ?? 0.0;
  bool hasEnergia() => _energia != null;

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
    _comecaEmDaRotina = snapshotData['comecaEmDaRotina'] as String?;
    _terminaEmDaRotina = snapshotData['terminaEmDaRotina'] as String?;
    _daRotina = snapshotData['daRotina'] as bool?;
    _dosTreinos = snapshotData['dosTreinos'] as bool?;
    _seriesRep = getDataList(snapshotData['seriesRep']);
    _carga = getDataList(snapshotData['carga']);
    _intervalo = getDataList(snapshotData['intervalo']);
    _imgUser = snapshotData['imgUser'] as String?;
    _codigoDoPersonal = castToType<int>(snapshotData['codigoDoPersonal']);
    _createTreinos = snapshotData['createTreinos'] as DocumentReference?;
    _comentarioDoAluno = snapshotData['comentarioDoAluno'] as String?;
    _atividadeDoAluno = snapshotData['atividadeDoAluno'] as String?;
    _duracao = castToType<int>(snapshotData['duracao']);
    _respostaDoProf = snapshotData['respostaDoProf'] as String?;
    _horaDeTermino = snapshotData['horaDeTermino'] as DateTime?;
    _dificuldadeDoExercicio = snapshotData['dificuldadeDoExercicio'] as String?;
    _progresso = snapshotData['progresso'] as String?;
    _melhoria = snapshotData['melhoria'] as String?;
    _estrela = castToType<double>(snapshotData['estrela']);
    _energia = castToType<double>(snapshotData['energia']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('feedback')
          : FirebaseFirestore.instance.collectionGroup('feedback');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('feedback').doc(id);

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
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
  String? comecaEmDaRotina,
  String? terminaEmDaRotina,
  bool? daRotina,
  bool? dosTreinos,
  String? imgUser,
  int? codigoDoPersonal,
  DocumentReference? createTreinos,
  String? comentarioDoAluno,
  String? atividadeDoAluno,
  int? duracao,
  String? respostaDoProf,
  DateTime? horaDeTermino,
  String? dificuldadeDoExercicio,
  String? progresso,
  String? melhoria,
  double? estrela,
  double? energia,
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
      'comecaEmDaRotina': comecaEmDaRotina,
      'terminaEmDaRotina': terminaEmDaRotina,
      'daRotina': daRotina,
      'dosTreinos': dosTreinos,
      'imgUser': imgUser,
      'codigoDoPersonal': codigoDoPersonal,
      'createTreinos': createTreinos,
      'comentarioDoAluno': comentarioDoAluno,
      'atividadeDoAluno': atividadeDoAluno,
      'duracao': duracao,
      'respostaDoProf': respostaDoProf,
      'horaDeTermino': horaDeTermino,
      'dificuldadeDoExercicio': dificuldadeDoExercicio,
      'progresso': progresso,
      'melhoria': melhoria,
      'estrela': estrela,
      'energia': energia,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
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
        e1?.comecaEmDaRotina == e2?.comecaEmDaRotina &&
        e1?.terminaEmDaRotina == e2?.terminaEmDaRotina &&
        e1?.daRotina == e2?.daRotina &&
        e1?.dosTreinos == e2?.dosTreinos &&
        listEquality.equals(e1?.seriesRep, e2?.seriesRep) &&
        listEquality.equals(e1?.carga, e2?.carga) &&
        listEquality.equals(e1?.intervalo, e2?.intervalo) &&
        e1?.imgUser == e2?.imgUser &&
        e1?.codigoDoPersonal == e2?.codigoDoPersonal &&
        e1?.createTreinos == e2?.createTreinos &&
        e1?.comentarioDoAluno == e2?.comentarioDoAluno &&
        e1?.atividadeDoAluno == e2?.atividadeDoAluno &&
        e1?.duracao == e2?.duracao &&
        e1?.respostaDoProf == e2?.respostaDoProf &&
        e1?.horaDeTermino == e2?.horaDeTermino &&
        e1?.dificuldadeDoExercicio == e2?.dificuldadeDoExercicio &&
        e1?.progresso == e2?.progresso &&
        e1?.melhoria == e2?.melhoria &&
        e1?.estrela == e2?.estrela &&
        e1?.energia == e2?.energia;
  }

  @override
  int hash(FeedbackRecord? e) => const ListEquality().hash([
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
        e?.comecaEmDaRotina,
        e?.terminaEmDaRotina,
        e?.daRotina,
        e?.dosTreinos,
        e?.seriesRep,
        e?.carga,
        e?.intervalo,
        e?.imgUser,
        e?.codigoDoPersonal,
        e?.createTreinos,
        e?.comentarioDoAluno,
        e?.atividadeDoAluno,
        e?.duracao,
        e?.respostaDoProf,
        e?.horaDeTermino,
        e?.dificuldadeDoExercicio,
        e?.progresso,
        e?.melhoria,
        e?.estrela,
        e?.energia
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
