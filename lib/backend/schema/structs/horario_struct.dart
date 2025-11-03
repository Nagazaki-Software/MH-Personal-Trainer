// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorarioStruct extends FFFirebaseStruct {
  HorarioStruct({
    DateTime? inicioSegSex,
    DateTime? terminioSegSex,
    DateTime? inicioSab,
    DateTime? terminioSab,
    DateTime? inicioDom,
    DateTime? terminioDom,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _inicioSegSex = inicioSegSex,
        _terminioSegSex = terminioSegSex,
        _inicioSab = inicioSab,
        _terminioSab = terminioSab,
        _inicioDom = inicioDom,
        _terminioDom = terminioDom,
        super(firestoreUtilData);

  // "inicioSegSex" field.
  DateTime? _inicioSegSex;
  DateTime? get inicioSegSex => _inicioSegSex;
  set inicioSegSex(DateTime? val) => _inicioSegSex = val;

  bool hasInicioSegSex() => _inicioSegSex != null;

  // "terminioSegSex" field.
  DateTime? _terminioSegSex;
  DateTime? get terminioSegSex => _terminioSegSex;
  set terminioSegSex(DateTime? val) => _terminioSegSex = val;

  bool hasTerminioSegSex() => _terminioSegSex != null;

  // "inicioSab" field.
  DateTime? _inicioSab;
  DateTime? get inicioSab => _inicioSab;
  set inicioSab(DateTime? val) => _inicioSab = val;

  bool hasInicioSab() => _inicioSab != null;

  // "terminioSab" field.
  DateTime? _terminioSab;
  DateTime? get terminioSab => _terminioSab;
  set terminioSab(DateTime? val) => _terminioSab = val;

  bool hasTerminioSab() => _terminioSab != null;

  // "inicioDom" field.
  DateTime? _inicioDom;
  DateTime? get inicioDom => _inicioDom;
  set inicioDom(DateTime? val) => _inicioDom = val;

  bool hasInicioDom() => _inicioDom != null;

  // "terminioDom" field.
  DateTime? _terminioDom;
  DateTime? get terminioDom => _terminioDom;
  set terminioDom(DateTime? val) => _terminioDom = val;

  bool hasTerminioDom() => _terminioDom != null;

  static HorarioStruct fromMap(Map<String, dynamic> data) => HorarioStruct(
        inicioSegSex: data['inicioSegSex'] as DateTime?,
        terminioSegSex: data['terminioSegSex'] as DateTime?,
        inicioSab: data['inicioSab'] as DateTime?,
        terminioSab: data['terminioSab'] as DateTime?,
        inicioDom: data['inicioDom'] as DateTime?,
        terminioDom: data['terminioDom'] as DateTime?,
      );

  static HorarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? HorarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'inicioSegSex': _inicioSegSex,
        'terminioSegSex': _terminioSegSex,
        'inicioSab': _inicioSab,
        'terminioSab': _terminioSab,
        'inicioDom': _inicioDom,
        'terminioDom': _terminioDom,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'inicioSegSex': serializeParam(
          _inicioSegSex,
          ParamType.DateTime,
        ),
        'terminioSegSex': serializeParam(
          _terminioSegSex,
          ParamType.DateTime,
        ),
        'inicioSab': serializeParam(
          _inicioSab,
          ParamType.DateTime,
        ),
        'terminioSab': serializeParam(
          _terminioSab,
          ParamType.DateTime,
        ),
        'inicioDom': serializeParam(
          _inicioDom,
          ParamType.DateTime,
        ),
        'terminioDom': serializeParam(
          _terminioDom,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static HorarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      HorarioStruct(
        inicioSegSex: deserializeParam(
          data['inicioSegSex'],
          ParamType.DateTime,
          false,
        ),
        terminioSegSex: deserializeParam(
          data['terminioSegSex'],
          ParamType.DateTime,
          false,
        ),
        inicioSab: deserializeParam(
          data['inicioSab'],
          ParamType.DateTime,
          false,
        ),
        terminioSab: deserializeParam(
          data['terminioSab'],
          ParamType.DateTime,
          false,
        ),
        inicioDom: deserializeParam(
          data['inicioDom'],
          ParamType.DateTime,
          false,
        ),
        terminioDom: deserializeParam(
          data['terminioDom'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'HorarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HorarioStruct &&
        inicioSegSex == other.inicioSegSex &&
        terminioSegSex == other.terminioSegSex &&
        inicioSab == other.inicioSab &&
        terminioSab == other.terminioSab &&
        inicioDom == other.inicioDom &&
        terminioDom == other.terminioDom;
  }

  @override
  int get hashCode => const ListEquality().hash([
        inicioSegSex,
        terminioSegSex,
        inicioSab,
        terminioSab,
        inicioDom,
        terminioDom
      ]);
}

HorarioStruct createHorarioStruct({
  DateTime? inicioSegSex,
  DateTime? terminioSegSex,
  DateTime? inicioSab,
  DateTime? terminioSab,
  DateTime? inicioDom,
  DateTime? terminioDom,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HorarioStruct(
      inicioSegSex: inicioSegSex,
      terminioSegSex: terminioSegSex,
      inicioSab: inicioSab,
      terminioSab: terminioSab,
      inicioDom: inicioDom,
      terminioDom: terminioDom,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HorarioStruct? updateHorarioStruct(
  HorarioStruct? horario, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    horario
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHorarioStructData(
  Map<String, dynamic> firestoreData,
  HorarioStruct? horario,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (horario == null) {
    return;
  }
  if (horario.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && horario.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final horarioData = getHorarioFirestoreData(horario, forFieldValue);
  final nestedData = horarioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = horario.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHorarioFirestoreData(
  HorarioStruct? horario, [
  bool forFieldValue = false,
]) {
  if (horario == null) {
    return {};
  }
  final firestoreData = mapToFirestore(horario.toMap());

  // Add any Firestore field values
  horario.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHorarioListFirestoreData(
  List<HorarioStruct>? horarios,
) =>
    horarios?.map((e) => getHorarioFirestoreData(e, true)).toList() ?? [];
