// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvolucaoDeCargaStruct extends FFFirebaseStruct {
  EvolucaoDeCargaStruct({
    String? carga,
    DateTime? data,
    String? exercicio,
    int? cargasInt,
    String? uidTreinos,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _carga = carga,
        _data = data,
        _exercicio = exercicio,
        _cargasInt = cargasInt,
        _uidTreinos = uidTreinos,
        super(firestoreUtilData);

  // "carga" field.
  String? _carga;
  String get carga => _carga ?? '';
  set carga(String? val) => _carga = val;

  bool hasCarga() => _carga != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "exercicio" field.
  String? _exercicio;
  String get exercicio => _exercicio ?? '';
  set exercicio(String? val) => _exercicio = val;

  bool hasExercicio() => _exercicio != null;

  // "cargasInt" field.
  int? _cargasInt;
  int get cargasInt => _cargasInt ?? 0;
  set cargasInt(int? val) => _cargasInt = val;

  void incrementCargasInt(int amount) => cargasInt = cargasInt + amount;

  bool hasCargasInt() => _cargasInt != null;

  // "uidTreinos" field.
  String? _uidTreinos;
  String get uidTreinos => _uidTreinos ?? '';
  set uidTreinos(String? val) => _uidTreinos = val;

  bool hasUidTreinos() => _uidTreinos != null;

  static EvolucaoDeCargaStruct fromMap(Map<String, dynamic> data) =>
      EvolucaoDeCargaStruct(
        carga: data['carga'] as String?,
        data: data['data'] as DateTime?,
        exercicio: data['exercicio'] as String?,
        cargasInt: castToType<int>(data['cargasInt']),
        uidTreinos: data['uidTreinos'] as String?,
      );

  static EvolucaoDeCargaStruct? maybeFromMap(dynamic data) => data is Map
      ? EvolucaoDeCargaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'carga': _carga,
        'data': _data,
        'exercicio': _exercicio,
        'cargasInt': _cargasInt,
        'uidTreinos': _uidTreinos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carga': serializeParam(
          _carga,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'exercicio': serializeParam(
          _exercicio,
          ParamType.String,
        ),
        'cargasInt': serializeParam(
          _cargasInt,
          ParamType.int,
        ),
        'uidTreinos': serializeParam(
          _uidTreinos,
          ParamType.String,
        ),
      }.withoutNulls;

  static EvolucaoDeCargaStruct fromSerializableMap(Map<String, dynamic> data) =>
      EvolucaoDeCargaStruct(
        carga: deserializeParam(
          data['carga'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        exercicio: deserializeParam(
          data['exercicio'],
          ParamType.String,
          false,
        ),
        cargasInt: deserializeParam(
          data['cargasInt'],
          ParamType.int,
          false,
        ),
        uidTreinos: deserializeParam(
          data['uidTreinos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EvolucaoDeCargaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EvolucaoDeCargaStruct &&
        carga == other.carga &&
        data == other.data &&
        exercicio == other.exercicio &&
        cargasInt == other.cargasInt &&
        uidTreinos == other.uidTreinos;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([carga, data, exercicio, cargasInt, uidTreinos]);
}

EvolucaoDeCargaStruct createEvolucaoDeCargaStruct({
  String? carga,
  DateTime? data,
  String? exercicio,
  int? cargasInt,
  String? uidTreinos,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EvolucaoDeCargaStruct(
      carga: carga,
      data: data,
      exercicio: exercicio,
      cargasInt: cargasInt,
      uidTreinos: uidTreinos,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EvolucaoDeCargaStruct? updateEvolucaoDeCargaStruct(
  EvolucaoDeCargaStruct? evolucaoDeCarga, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    evolucaoDeCarga
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEvolucaoDeCargaStructData(
  Map<String, dynamic> firestoreData,
  EvolucaoDeCargaStruct? evolucaoDeCarga,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (evolucaoDeCarga == null) {
    return;
  }
  if (evolucaoDeCarga.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && evolucaoDeCarga.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final evolucaoDeCargaData =
      getEvolucaoDeCargaFirestoreData(evolucaoDeCarga, forFieldValue);
  final nestedData =
      evolucaoDeCargaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = evolucaoDeCarga.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEvolucaoDeCargaFirestoreData(
  EvolucaoDeCargaStruct? evolucaoDeCarga, [
  bool forFieldValue = false,
]) {
  if (evolucaoDeCarga == null) {
    return {};
  }
  final firestoreData = mapToFirestore(evolucaoDeCarga.toMap());

  // Add any Firestore field values
  evolucaoDeCarga.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEvolucaoDeCargaListFirestoreData(
  List<EvolucaoDeCargaStruct>? evolucaoDeCargas,
) =>
    evolucaoDeCargas
        ?.map((e) => getEvolucaoDeCargaFirestoreData(e, true))
        .toList() ??
    [];
