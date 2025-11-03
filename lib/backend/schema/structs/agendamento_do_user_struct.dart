// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentoDoUserStruct extends FFFirebaseStruct {
  AgendamentoDoUserStruct({
    DateTime? dia,
    String? hora,
    DocumentReference? personal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dia = dia,
        _hora = hora,
        _personal = personal,
        super(firestoreUtilData);

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  set dia(DateTime? val) => _dia = val;

  bool hasDia() => _dia != null;

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  set hora(String? val) => _hora = val;

  bool hasHora() => _hora != null;

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  set personal(DocumentReference? val) => _personal = val;

  bool hasPersonal() => _personal != null;

  static AgendamentoDoUserStruct fromMap(Map<String, dynamic> data) =>
      AgendamentoDoUserStruct(
        dia: data['dia'] as DateTime?,
        hora: data['hora'] as String?,
        personal: data['personal'] as DocumentReference?,
      );

  static AgendamentoDoUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AgendamentoDoUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dia': _dia,
        'hora': _hora,
        'personal': _personal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dia': serializeParam(
          _dia,
          ParamType.DateTime,
        ),
        'hora': serializeParam(
          _hora,
          ParamType.String,
        ),
        'personal': serializeParam(
          _personal,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static AgendamentoDoUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AgendamentoDoUserStruct(
        dia: deserializeParam(
          data['dia'],
          ParamType.DateTime,
          false,
        ),
        hora: deserializeParam(
          data['hora'],
          ParamType.String,
          false,
        ),
        personal: deserializeParam(
          data['personal'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'AgendamentoDoUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgendamentoDoUserStruct &&
        dia == other.dia &&
        hora == other.hora &&
        personal == other.personal;
  }

  @override
  int get hashCode => const ListEquality().hash([dia, hora, personal]);
}

AgendamentoDoUserStruct createAgendamentoDoUserStruct({
  DateTime? dia,
  String? hora,
  DocumentReference? personal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgendamentoDoUserStruct(
      dia: dia,
      hora: hora,
      personal: personal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AgendamentoDoUserStruct? updateAgendamentoDoUserStruct(
  AgendamentoDoUserStruct? agendamentoDoUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    agendamentoDoUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgendamentoDoUserStructData(
  Map<String, dynamic> firestoreData,
  AgendamentoDoUserStruct? agendamentoDoUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (agendamentoDoUser == null) {
    return;
  }
  if (agendamentoDoUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && agendamentoDoUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final agendamentoDoUserData =
      getAgendamentoDoUserFirestoreData(agendamentoDoUser, forFieldValue);
  final nestedData =
      agendamentoDoUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = agendamentoDoUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgendamentoDoUserFirestoreData(
  AgendamentoDoUserStruct? agendamentoDoUser, [
  bool forFieldValue = false,
]) {
  if (agendamentoDoUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(agendamentoDoUser.toMap());

  // Add any Firestore field values
  agendamentoDoUser.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgendamentoDoUserListFirestoreData(
  List<AgendamentoDoUserStruct>? agendamentoDoUsers,
) =>
    agendamentoDoUsers
        ?.map((e) => getAgendamentoDoUserFirestoreData(e, true))
        .toList() ??
    [];
