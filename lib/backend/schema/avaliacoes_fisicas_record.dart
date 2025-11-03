import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacoesFisicasRecord extends FirestoreRecord {
  AvaliacoesFisicasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "protocoloDeAvaliacao" field.
  String? _protocoloDeAvaliacao;
  String get protocoloDeAvaliacao => _protocoloDeAvaliacao ?? '';
  bool hasProtocoloDeAvaliacao() => _protocoloDeAvaliacao != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "estatura" field.
  double? _estatura;
  double get estatura => _estatura ?? 0.0;
  bool hasEstatura() => _estatura != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "pescoco" field.
  double? _pescoco;
  double get pescoco => _pescoco ?? 0.0;
  bool hasPescoco() => _pescoco != null;

  // "ombro" field.
  double? _ombro;
  double get ombro => _ombro ?? 0.0;
  bool hasOmbro() => _ombro != null;

  // "torax" field.
  double? _torax;
  double get torax => _torax ?? 0.0;
  bool hasTorax() => _torax != null;

  // "bracoEsquerdo" field.
  double? _bracoEsquerdo;
  double get bracoEsquerdo => _bracoEsquerdo ?? 0.0;
  bool hasBracoEsquerdo() => _bracoEsquerdo != null;

  // "bracoDireito" field.
  double? _bracoDireito;
  double get bracoDireito => _bracoDireito ?? 0.0;
  bool hasBracoDireito() => _bracoDireito != null;

  // "cintura" field.
  double? _cintura;
  double get cintura => _cintura ?? 0.0;
  bool hasCintura() => _cintura != null;

  // "abdominal" field.
  double? _abdominal;
  double get abdominal => _abdominal ?? 0.0;
  bool hasAbdominal() => _abdominal != null;

  // "quadril" field.
  double? _quadril;
  double get quadril => _quadril ?? 0.0;
  bool hasQuadril() => _quadril != null;

  // "coxaEsquerda" field.
  double? _coxaEsquerda;
  double get coxaEsquerda => _coxaEsquerda ?? 0.0;
  bool hasCoxaEsquerda() => _coxaEsquerda != null;

  // "coxaDireita" field.
  double? _coxaDireita;
  double get coxaDireita => _coxaDireita ?? 0.0;
  bool hasCoxaDireita() => _coxaDireita != null;

  // "pernaEsquerda" field.
  double? _pernaEsquerda;
  double get pernaEsquerda => _pernaEsquerda ?? 0.0;
  bool hasPernaEsquerda() => _pernaEsquerda != null;

  // "pernaDireita" field.
  double? _pernaDireita;
  double get pernaDireita => _pernaDireita ?? 0.0;
  bool hasPernaDireita() => _pernaDireita != null;

  // "abdominalAntropometria" field.
  double? _abdominalAntropometria;
  double get abdominalAntropometria => _abdominalAntropometria ?? 0.0;
  bool hasAbdominalAntropometria() => _abdominalAntropometria != null;

  // "peitoralAntropometria" field.
  double? _peitoralAntropometria;
  double get peitoralAntropometria => _peitoralAntropometria ?? 0.0;
  bool hasPeitoralAntropometria() => _peitoralAntropometria != null;

  // "coxaAntropometria" field.
  double? _coxaAntropometria;
  double get coxaAntropometria => _coxaAntropometria ?? 0.0;
  bool hasCoxaAntropometria() => _coxaAntropometria != null;

  // "pesoIdeal" field.
  double? _pesoIdeal;
  double get pesoIdeal => _pesoIdeal ?? 0.0;
  bool hasPesoIdeal() => _pesoIdeal != null;

  // "proposta" field.
  double? _proposta;
  double get proposta => _proposta ?? 0.0;
  bool hasProposta() => _proposta != null;

  // "objetivoDoAluno" field.
  String? _objetivoDoAluno;
  String get objetivoDoAluno => _objetivoDoAluno ?? '';
  bool hasObjetivoDoAluno() => _objetivoDoAluno != null;

  // "observacoes" field.
  String? _observacoes;
  String get observacoes => _observacoes ?? '';
  bool hasObservacoes() => _observacoes != null;

  // "fotoDoAluno" field.
  String? _fotoDoAluno;
  String get fotoDoAluno => _fotoDoAluno ?? '';
  bool hasFotoDoAluno() => _fotoDoAluno != null;

  // "Tricipital" field.
  double? _tricipital;
  double get tricipital => _tricipital ?? 0.0;
  bool hasTricipital() => _tricipital != null;

  // "Subescapular" field.
  double? _subescapular;
  double get subescapular => _subescapular ?? 0.0;
  bool hasSubescapular() => _subescapular != null;

  // "SupraIlaca" field.
  double? _supraIlaca;
  double get supraIlaca => _supraIlaca ?? 0.0;
  bool hasSupraIlaca() => _supraIlaca != null;

  // "AxilarMdia" field.
  double? _axilarMdia;
  double get axilarMdia => _axilarMdia ?? 0.0;
  bool hasAxilarMdia() => _axilarMdia != null;

  // "PanturrilhaMedial" field.
  double? _panturrilhaMedial;
  double get panturrilhaMedial => _panturrilhaMedial ?? 0.0;
  bool hasPanturrilhaMedial() => _panturrilhaMedial != null;

  // "porcentualDeGordura" field.
  double? _porcentualDeGordura;
  double get porcentualDeGordura => _porcentualDeGordura ?? 0.0;
  bool hasPorcentualDeGordura() => _porcentualDeGordura != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "feita" field.
  bool? _feita;
  bool get feita => _feita ?? false;
  bool hasFeita() => _feita != null;

  // "proxAvaliacao" field.
  DateTime? _proxAvaliacao;
  DateTime? get proxAvaliacao => _proxAvaliacao;
  bool hasProxAvaliacao() => _proxAvaliacao != null;

  // "dataDaAvaliacao" field.
  DateTime? _dataDaAvaliacao;
  DateTime? get dataDaAvaliacao => _dataDaAvaliacao;
  bool hasDataDaAvaliacao() => _dataDaAvaliacao != null;

  // "protocoloFuncions" field.
  List<double>? _protocoloFuncions;
  List<double> get protocoloFuncions => _protocoloFuncions ?? const [];
  bool hasProtocoloFuncions() => _protocoloFuncions != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _protocoloDeAvaliacao = snapshotData['protocoloDeAvaliacao'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _estatura = castToType<double>(snapshotData['estatura']);
    _peso = castToType<double>(snapshotData['peso']);
    _pescoco = castToType<double>(snapshotData['pescoco']);
    _ombro = castToType<double>(snapshotData['ombro']);
    _torax = castToType<double>(snapshotData['torax']);
    _bracoEsquerdo = castToType<double>(snapshotData['bracoEsquerdo']);
    _bracoDireito = castToType<double>(snapshotData['bracoDireito']);
    _cintura = castToType<double>(snapshotData['cintura']);
    _abdominal = castToType<double>(snapshotData['abdominal']);
    _quadril = castToType<double>(snapshotData['quadril']);
    _coxaEsquerda = castToType<double>(snapshotData['coxaEsquerda']);
    _coxaDireita = castToType<double>(snapshotData['coxaDireita']);
    _pernaEsquerda = castToType<double>(snapshotData['pernaEsquerda']);
    _pernaDireita = castToType<double>(snapshotData['pernaDireita']);
    _abdominalAntropometria =
        castToType<double>(snapshotData['abdominalAntropometria']);
    _peitoralAntropometria =
        castToType<double>(snapshotData['peitoralAntropometria']);
    _coxaAntropometria = castToType<double>(snapshotData['coxaAntropometria']);
    _pesoIdeal = castToType<double>(snapshotData['pesoIdeal']);
    _proposta = castToType<double>(snapshotData['proposta']);
    _objetivoDoAluno = snapshotData['objetivoDoAluno'] as String?;
    _observacoes = snapshotData['observacoes'] as String?;
    _fotoDoAluno = snapshotData['fotoDoAluno'] as String?;
    _tricipital = castToType<double>(snapshotData['Tricipital']);
    _subescapular = castToType<double>(snapshotData['Subescapular']);
    _supraIlaca = castToType<double>(snapshotData['SupraIlaca']);
    _axilarMdia = castToType<double>(snapshotData['AxilarMdia']);
    _panturrilhaMedial = castToType<double>(snapshotData['PanturrilhaMedial']);
    _porcentualDeGordura =
        castToType<double>(snapshotData['porcentualDeGordura']);
    _uid = snapshotData['uid'] as String?;
    _feita = snapshotData['feita'] as bool?;
    _proxAvaliacao = snapshotData['proxAvaliacao'] as DateTime?;
    _dataDaAvaliacao = snapshotData['dataDaAvaliacao'] as DateTime?;
    _protocoloFuncions = getDataList(snapshotData['protocoloFuncions']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('avaliacoesFisicas')
          : FirebaseFirestore.instance.collectionGroup('avaliacoesFisicas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('avaliacoesFisicas').doc(id);

  static Stream<AvaliacoesFisicasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliacoesFisicasRecord.fromSnapshot(s));

  static Future<AvaliacoesFisicasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AvaliacoesFisicasRecord.fromSnapshot(s));

  static AvaliacoesFisicasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliacoesFisicasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliacoesFisicasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliacoesFisicasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliacoesFisicasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliacoesFisicasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliacoesFisicasRecordData({
  String? protocoloDeAvaliacao,
  int? idade,
  double? estatura,
  double? peso,
  double? pescoco,
  double? ombro,
  double? torax,
  double? bracoEsquerdo,
  double? bracoDireito,
  double? cintura,
  double? abdominal,
  double? quadril,
  double? coxaEsquerda,
  double? coxaDireita,
  double? pernaEsquerda,
  double? pernaDireita,
  double? abdominalAntropometria,
  double? peitoralAntropometria,
  double? coxaAntropometria,
  double? pesoIdeal,
  double? proposta,
  String? objetivoDoAluno,
  String? observacoes,
  String? fotoDoAluno,
  double? tricipital,
  double? subescapular,
  double? supraIlaca,
  double? axilarMdia,
  double? panturrilhaMedial,
  double? porcentualDeGordura,
  String? uid,
  bool? feita,
  DateTime? proxAvaliacao,
  DateTime? dataDaAvaliacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'protocoloDeAvaliacao': protocoloDeAvaliacao,
      'idade': idade,
      'estatura': estatura,
      'peso': peso,
      'pescoco': pescoco,
      'ombro': ombro,
      'torax': torax,
      'bracoEsquerdo': bracoEsquerdo,
      'bracoDireito': bracoDireito,
      'cintura': cintura,
      'abdominal': abdominal,
      'quadril': quadril,
      'coxaEsquerda': coxaEsquerda,
      'coxaDireita': coxaDireita,
      'pernaEsquerda': pernaEsquerda,
      'pernaDireita': pernaDireita,
      'abdominalAntropometria': abdominalAntropometria,
      'peitoralAntropometria': peitoralAntropometria,
      'coxaAntropometria': coxaAntropometria,
      'pesoIdeal': pesoIdeal,
      'proposta': proposta,
      'objetivoDoAluno': objetivoDoAluno,
      'observacoes': observacoes,
      'fotoDoAluno': fotoDoAluno,
      'Tricipital': tricipital,
      'Subescapular': subescapular,
      'SupraIlaca': supraIlaca,
      'AxilarMdia': axilarMdia,
      'PanturrilhaMedial': panturrilhaMedial,
      'porcentualDeGordura': porcentualDeGordura,
      'uid': uid,
      'feita': feita,
      'proxAvaliacao': proxAvaliacao,
      'dataDaAvaliacao': dataDaAvaliacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliacoesFisicasRecordDocumentEquality
    implements Equality<AvaliacoesFisicasRecord> {
  const AvaliacoesFisicasRecordDocumentEquality();

  @override
  bool equals(AvaliacoesFisicasRecord? e1, AvaliacoesFisicasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.protocoloDeAvaliacao == e2?.protocoloDeAvaliacao &&
        e1?.idade == e2?.idade &&
        e1?.estatura == e2?.estatura &&
        e1?.peso == e2?.peso &&
        e1?.pescoco == e2?.pescoco &&
        e1?.ombro == e2?.ombro &&
        e1?.torax == e2?.torax &&
        e1?.bracoEsquerdo == e2?.bracoEsquerdo &&
        e1?.bracoDireito == e2?.bracoDireito &&
        e1?.cintura == e2?.cintura &&
        e1?.abdominal == e2?.abdominal &&
        e1?.quadril == e2?.quadril &&
        e1?.coxaEsquerda == e2?.coxaEsquerda &&
        e1?.coxaDireita == e2?.coxaDireita &&
        e1?.pernaEsquerda == e2?.pernaEsquerda &&
        e1?.pernaDireita == e2?.pernaDireita &&
        e1?.abdominalAntropometria == e2?.abdominalAntropometria &&
        e1?.peitoralAntropometria == e2?.peitoralAntropometria &&
        e1?.coxaAntropometria == e2?.coxaAntropometria &&
        e1?.pesoIdeal == e2?.pesoIdeal &&
        e1?.proposta == e2?.proposta &&
        e1?.objetivoDoAluno == e2?.objetivoDoAluno &&
        e1?.observacoes == e2?.observacoes &&
        e1?.fotoDoAluno == e2?.fotoDoAluno &&
        e1?.tricipital == e2?.tricipital &&
        e1?.subescapular == e2?.subescapular &&
        e1?.supraIlaca == e2?.supraIlaca &&
        e1?.axilarMdia == e2?.axilarMdia &&
        e1?.panturrilhaMedial == e2?.panturrilhaMedial &&
        e1?.porcentualDeGordura == e2?.porcentualDeGordura &&
        e1?.uid == e2?.uid &&
        e1?.feita == e2?.feita &&
        e1?.proxAvaliacao == e2?.proxAvaliacao &&
        e1?.dataDaAvaliacao == e2?.dataDaAvaliacao &&
        listEquality.equals(e1?.protocoloFuncions, e2?.protocoloFuncions);
  }

  @override
  int hash(AvaliacoesFisicasRecord? e) => const ListEquality().hash([
        e?.protocoloDeAvaliacao,
        e?.idade,
        e?.estatura,
        e?.peso,
        e?.pescoco,
        e?.ombro,
        e?.torax,
        e?.bracoEsquerdo,
        e?.bracoDireito,
        e?.cintura,
        e?.abdominal,
        e?.quadril,
        e?.coxaEsquerda,
        e?.coxaDireita,
        e?.pernaEsquerda,
        e?.pernaDireita,
        e?.abdominalAntropometria,
        e?.peitoralAntropometria,
        e?.coxaAntropometria,
        e?.pesoIdeal,
        e?.proposta,
        e?.objetivoDoAluno,
        e?.observacoes,
        e?.fotoDoAluno,
        e?.tricipital,
        e?.subescapular,
        e?.supraIlaca,
        e?.axilarMdia,
        e?.panturrilhaMedial,
        e?.porcentualDeGordura,
        e?.uid,
        e?.feita,
        e?.proxAvaliacao,
        e?.dataDaAvaliacao,
        e?.protocoloFuncions
      ]);

  @override
  bool isValidKey(Object? o) => o is AvaliacoesFisicasRecord;
}
