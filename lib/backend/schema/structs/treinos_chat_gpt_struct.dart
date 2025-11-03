// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosChatGptStruct extends FFFirebaseStruct {
  TreinosChatGptStruct({
    String? treino,
    String? tempo,
    String? objetivo,
    String? categoria,
    DateTime? dia,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _treino = treino,
        _tempo = tempo,
        _objetivo = objetivo,
        _categoria = categoria,
        _dia = dia,
        super(firestoreUtilData);

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  set treino(String? val) => _treino = val;

  bool hasTreino() => _treino != null;

  // "tempo" field.
  String? _tempo;
  String get tempo => _tempo ?? '';
  set tempo(String? val) => _tempo = val;

  bool hasTempo() => _tempo != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  set objetivo(String? val) => _objetivo = val;

  bool hasObjetivo() => _objetivo != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  set dia(DateTime? val) => _dia = val;

  bool hasDia() => _dia != null;

  static TreinosChatGptStruct fromMap(Map<String, dynamic> data) =>
      TreinosChatGptStruct(
        treino: data['treino'] as String?,
        tempo: data['tempo'] as String?,
        objetivo: data['objetivo'] as String?,
        categoria: data['categoria'] as String?,
        dia: data['dia'] as DateTime?,
      );

  static TreinosChatGptStruct? maybeFromMap(dynamic data) => data is Map
      ? TreinosChatGptStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'treino': _treino,
        'tempo': _tempo,
        'objetivo': _objetivo,
        'categoria': _categoria,
        'dia': _dia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'treino': serializeParam(
          _treino,
          ParamType.String,
        ),
        'tempo': serializeParam(
          _tempo,
          ParamType.String,
        ),
        'objetivo': serializeParam(
          _objetivo,
          ParamType.String,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
        'dia': serializeParam(
          _dia,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TreinosChatGptStruct fromSerializableMap(Map<String, dynamic> data) =>
      TreinosChatGptStruct(
        treino: deserializeParam(
          data['treino'],
          ParamType.String,
          false,
        ),
        tempo: deserializeParam(
          data['tempo'],
          ParamType.String,
          false,
        ),
        objetivo: deserializeParam(
          data['objetivo'],
          ParamType.String,
          false,
        ),
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
        dia: deserializeParam(
          data['dia'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TreinosChatGptStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TreinosChatGptStruct &&
        treino == other.treino &&
        tempo == other.tempo &&
        objetivo == other.objetivo &&
        categoria == other.categoria &&
        dia == other.dia;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([treino, tempo, objetivo, categoria, dia]);
}

TreinosChatGptStruct createTreinosChatGptStruct({
  String? treino,
  String? tempo,
  String? objetivo,
  String? categoria,
  DateTime? dia,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TreinosChatGptStruct(
      treino: treino,
      tempo: tempo,
      objetivo: objetivo,
      categoria: categoria,
      dia: dia,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TreinosChatGptStruct? updateTreinosChatGptStruct(
  TreinosChatGptStruct? treinosChatGpt, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    treinosChatGpt
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTreinosChatGptStructData(
  Map<String, dynamic> firestoreData,
  TreinosChatGptStruct? treinosChatGpt,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (treinosChatGpt == null) {
    return;
  }
  if (treinosChatGpt.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && treinosChatGpt.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final treinosChatGptData =
      getTreinosChatGptFirestoreData(treinosChatGpt, forFieldValue);
  final nestedData =
      treinosChatGptData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = treinosChatGpt.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTreinosChatGptFirestoreData(
  TreinosChatGptStruct? treinosChatGpt, [
  bool forFieldValue = false,
]) {
  if (treinosChatGpt == null) {
    return {};
  }
  final firestoreData = mapToFirestore(treinosChatGpt.toMap());

  // Add any Firestore field values
  treinosChatGpt.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTreinosChatGptListFirestoreData(
  List<TreinosChatGptStruct>? treinosChatGpts,
) =>
    treinosChatGpts
        ?.map((e) => getTreinosChatGptFirestoreData(e, true))
        .toList() ??
    [];
