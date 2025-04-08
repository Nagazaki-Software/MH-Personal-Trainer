// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeriesRepStruct extends FFFirebaseStruct {
  SeriesRepStruct({
    int? carga,
    String? series,
    String? repeticoes,
    String? intervalo,
    String? tempo,
    String? paces,
    String? distancia,
    String? inclinacaoes,
    String? cadencia,
    String? observacoes,
    String? velocidade,
    String? treino,
    String? protocolo,
    List<String>? treinos,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _carga = carga,
        _series = series,
        _repeticoes = repeticoes,
        _intervalo = intervalo,
        _tempo = tempo,
        _paces = paces,
        _distancia = distancia,
        _inclinacaoes = inclinacaoes,
        _cadencia = cadencia,
        _observacoes = observacoes,
        _velocidade = velocidade,
        _treino = treino,
        _protocolo = protocolo,
        _treinos = treinos,
        super(firestoreUtilData);

  // "carga" field.
  int? _carga;
  int get carga => _carga ?? 0;
  set carga(int? val) => _carga = val;

  void incrementCarga(int amount) => carga = carga + amount;

  bool hasCarga() => _carga != null;

  // "series" field.
  String? _series;
  String get series => _series ?? '';
  set series(String? val) => _series = val;

  bool hasSeries() => _series != null;

  // "repeticoes" field.
  String? _repeticoes;
  String get repeticoes => _repeticoes ?? '';
  set repeticoes(String? val) => _repeticoes = val;

  bool hasRepeticoes() => _repeticoes != null;

  // "intervalo" field.
  String? _intervalo;
  String get intervalo => _intervalo ?? '';
  set intervalo(String? val) => _intervalo = val;

  bool hasIntervalo() => _intervalo != null;

  // "tempo" field.
  String? _tempo;
  String get tempo => _tempo ?? '';
  set tempo(String? val) => _tempo = val;

  bool hasTempo() => _tempo != null;

  // "paces" field.
  String? _paces;
  String get paces => _paces ?? '';
  set paces(String? val) => _paces = val;

  bool hasPaces() => _paces != null;

  // "distancia" field.
  String? _distancia;
  String get distancia => _distancia ?? '';
  set distancia(String? val) => _distancia = val;

  bool hasDistancia() => _distancia != null;

  // "inclinacaoes" field.
  String? _inclinacaoes;
  String get inclinacaoes => _inclinacaoes ?? '';
  set inclinacaoes(String? val) => _inclinacaoes = val;

  bool hasInclinacaoes() => _inclinacaoes != null;

  // "cadencia" field.
  String? _cadencia;
  String get cadencia => _cadencia ?? '';
  set cadencia(String? val) => _cadencia = val;

  bool hasCadencia() => _cadencia != null;

  // "observacoes" field.
  String? _observacoes;
  String get observacoes => _observacoes ?? '';
  set observacoes(String? val) => _observacoes = val;

  bool hasObservacoes() => _observacoes != null;

  // "velocidade" field.
  String? _velocidade;
  String get velocidade => _velocidade ?? '';
  set velocidade(String? val) => _velocidade = val;

  bool hasVelocidade() => _velocidade != null;

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  set treino(String? val) => _treino = val;

  bool hasTreino() => _treino != null;

  // "protocolo" field.
  String? _protocolo;
  String get protocolo => _protocolo ?? '';
  set protocolo(String? val) => _protocolo = val;

  bool hasProtocolo() => _protocolo != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  set treinos(List<String>? val) => _treinos = val;

  void updateTreinos(Function(List<String>) updateFn) {
    updateFn(_treinos ??= []);
  }

  bool hasTreinos() => _treinos != null;

  static SeriesRepStruct fromMap(Map<String, dynamic> data) => SeriesRepStruct(
        carga: castToType<int>(data['carga']),
        series: data['series'] as String?,
        repeticoes: data['repeticoes'] as String?,
        intervalo: data['intervalo'] as String?,
        tempo: data['tempo'] as String?,
        paces: data['paces'] as String?,
        distancia: data['distancia'] as String?,
        inclinacaoes: data['inclinacaoes'] as String?,
        cadencia: data['cadencia'] as String?,
        observacoes: data['observacoes'] as String?,
        velocidade: data['velocidade'] as String?,
        treino: data['treino'] as String?,
        protocolo: data['protocolo'] as String?,
        treinos: getDataList(data['treinos']),
      );

  static SeriesRepStruct? maybeFromMap(dynamic data) => data is Map
      ? SeriesRepStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'carga': _carga,
        'series': _series,
        'repeticoes': _repeticoes,
        'intervalo': _intervalo,
        'tempo': _tempo,
        'paces': _paces,
        'distancia': _distancia,
        'inclinacaoes': _inclinacaoes,
        'cadencia': _cadencia,
        'observacoes': _observacoes,
        'velocidade': _velocidade,
        'treino': _treino,
        'protocolo': _protocolo,
        'treinos': _treinos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carga': serializeParam(
          _carga,
          ParamType.int,
        ),
        'series': serializeParam(
          _series,
          ParamType.String,
        ),
        'repeticoes': serializeParam(
          _repeticoes,
          ParamType.String,
        ),
        'intervalo': serializeParam(
          _intervalo,
          ParamType.String,
        ),
        'tempo': serializeParam(
          _tempo,
          ParamType.String,
        ),
        'paces': serializeParam(
          _paces,
          ParamType.String,
        ),
        'distancia': serializeParam(
          _distancia,
          ParamType.String,
        ),
        'inclinacaoes': serializeParam(
          _inclinacaoes,
          ParamType.String,
        ),
        'cadencia': serializeParam(
          _cadencia,
          ParamType.String,
        ),
        'observacoes': serializeParam(
          _observacoes,
          ParamType.String,
        ),
        'velocidade': serializeParam(
          _velocidade,
          ParamType.String,
        ),
        'treino': serializeParam(
          _treino,
          ParamType.String,
        ),
        'protocolo': serializeParam(
          _protocolo,
          ParamType.String,
        ),
        'treinos': serializeParam(
          _treinos,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static SeriesRepStruct fromSerializableMap(Map<String, dynamic> data) =>
      SeriesRepStruct(
        carga: deserializeParam(
          data['carga'],
          ParamType.int,
          false,
        ),
        series: deserializeParam(
          data['series'],
          ParamType.String,
          false,
        ),
        repeticoes: deserializeParam(
          data['repeticoes'],
          ParamType.String,
          false,
        ),
        intervalo: deserializeParam(
          data['intervalo'],
          ParamType.String,
          false,
        ),
        tempo: deserializeParam(
          data['tempo'],
          ParamType.String,
          false,
        ),
        paces: deserializeParam(
          data['paces'],
          ParamType.String,
          false,
        ),
        distancia: deserializeParam(
          data['distancia'],
          ParamType.String,
          false,
        ),
        inclinacaoes: deserializeParam(
          data['inclinacaoes'],
          ParamType.String,
          false,
        ),
        cadencia: deserializeParam(
          data['cadencia'],
          ParamType.String,
          false,
        ),
        observacoes: deserializeParam(
          data['observacoes'],
          ParamType.String,
          false,
        ),
        velocidade: deserializeParam(
          data['velocidade'],
          ParamType.String,
          false,
        ),
        treino: deserializeParam(
          data['treino'],
          ParamType.String,
          false,
        ),
        protocolo: deserializeParam(
          data['protocolo'],
          ParamType.String,
          false,
        ),
        treinos: deserializeParam<String>(
          data['treinos'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'SeriesRepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SeriesRepStruct &&
        carga == other.carga &&
        series == other.series &&
        repeticoes == other.repeticoes &&
        intervalo == other.intervalo &&
        tempo == other.tempo &&
        paces == other.paces &&
        distancia == other.distancia &&
        inclinacaoes == other.inclinacaoes &&
        cadencia == other.cadencia &&
        observacoes == other.observacoes &&
        velocidade == other.velocidade &&
        treino == other.treino &&
        protocolo == other.protocolo &&
        listEquality.equals(treinos, other.treinos);
  }

  @override
  int get hashCode => const ListEquality().hash([
        carga,
        series,
        repeticoes,
        intervalo,
        tempo,
        paces,
        distancia,
        inclinacaoes,
        cadencia,
        observacoes,
        velocidade,
        treino,
        protocolo,
        treinos
      ]);
}

SeriesRepStruct createSeriesRepStruct({
  int? carga,
  String? series,
  String? repeticoes,
  String? intervalo,
  String? tempo,
  String? paces,
  String? distancia,
  String? inclinacaoes,
  String? cadencia,
  String? observacoes,
  String? velocidade,
  String? treino,
  String? protocolo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SeriesRepStruct(
      carga: carga,
      series: series,
      repeticoes: repeticoes,
      intervalo: intervalo,
      tempo: tempo,
      paces: paces,
      distancia: distancia,
      inclinacaoes: inclinacaoes,
      cadencia: cadencia,
      observacoes: observacoes,
      velocidade: velocidade,
      treino: treino,
      protocolo: protocolo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SeriesRepStruct? updateSeriesRepStruct(
  SeriesRepStruct? seriesRep, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    seriesRep
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSeriesRepStructData(
  Map<String, dynamic> firestoreData,
  SeriesRepStruct? seriesRep,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (seriesRep == null) {
    return;
  }
  if (seriesRep.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && seriesRep.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final seriesRepData = getSeriesRepFirestoreData(seriesRep, forFieldValue);
  final nestedData = seriesRepData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = seriesRep.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSeriesRepFirestoreData(
  SeriesRepStruct? seriesRep, [
  bool forFieldValue = false,
]) {
  if (seriesRep == null) {
    return {};
  }
  final firestoreData = mapToFirestore(seriesRep.toMap());

  // Add any Firestore field values
  seriesRep.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSeriesRepListFirestoreData(
  List<SeriesRepStruct>? seriesReps,
) =>
    seriesReps?.map((e) => getSeriesRepFirestoreData(e, true)).toList() ?? [];
