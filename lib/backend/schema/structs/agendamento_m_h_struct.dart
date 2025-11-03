// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentoMHStruct extends FFFirebaseStruct {
  AgendamentoMHStruct({
    DocumentReference? user,
    MHVitrineStruct? service,
    DateTime? dia,
    String? hora,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        _service = service,
        _dia = dia,
        _hora = hora,
        super(firestoreUtilData);

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "service" field.
  MHVitrineStruct? _service;
  MHVitrineStruct get service => _service ?? MHVitrineStruct();
  set service(MHVitrineStruct? val) => _service = val;

  void updateService(Function(MHVitrineStruct) updateFn) {
    updateFn(_service ??= MHVitrineStruct());
  }

  bool hasService() => _service != null;

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

  static AgendamentoMHStruct fromMap(Map<String, dynamic> data) =>
      AgendamentoMHStruct(
        user: data['user'] as DocumentReference?,
        service: data['service'] is MHVitrineStruct
            ? data['service']
            : MHVitrineStruct.maybeFromMap(data['service']),
        dia: data['dia'] as DateTime?,
        hora: data['hora'] as String?,
      );

  static AgendamentoMHStruct? maybeFromMap(dynamic data) => data is Map
      ? AgendamentoMHStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
        'service': _service?.toMap(),
        'dia': _dia,
        'hora': _hora,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'service': serializeParam(
          _service,
          ParamType.DataStruct,
        ),
        'dia': serializeParam(
          _dia,
          ParamType.DateTime,
        ),
        'hora': serializeParam(
          _hora,
          ParamType.String,
        ),
      }.withoutNulls;

  static AgendamentoMHStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgendamentoMHStruct(
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        service: deserializeStructParam(
          data['service'],
          ParamType.DataStruct,
          false,
          structBuilder: MHVitrineStruct.fromSerializableMap,
        ),
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
      );

  @override
  String toString() => 'AgendamentoMHStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgendamentoMHStruct &&
        user == other.user &&
        service == other.service &&
        dia == other.dia &&
        hora == other.hora;
  }

  @override
  int get hashCode => const ListEquality().hash([user, service, dia, hora]);
}

AgendamentoMHStruct createAgendamentoMHStruct({
  DocumentReference? user,
  MHVitrineStruct? service,
  DateTime? dia,
  String? hora,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgendamentoMHStruct(
      user: user,
      service: service ?? (clearUnsetFields ? MHVitrineStruct() : null),
      dia: dia,
      hora: hora,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AgendamentoMHStruct? updateAgendamentoMHStruct(
  AgendamentoMHStruct? agendamentoMH, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    agendamentoMH
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgendamentoMHStructData(
  Map<String, dynamic> firestoreData,
  AgendamentoMHStruct? agendamentoMH,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (agendamentoMH == null) {
    return;
  }
  if (agendamentoMH.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && agendamentoMH.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final agendamentoMHData =
      getAgendamentoMHFirestoreData(agendamentoMH, forFieldValue);
  final nestedData =
      agendamentoMHData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = agendamentoMH.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgendamentoMHFirestoreData(
  AgendamentoMHStruct? agendamentoMH, [
  bool forFieldValue = false,
]) {
  if (agendamentoMH == null) {
    return {};
  }
  final firestoreData = mapToFirestore(agendamentoMH.toMap());

  // Handle nested data for "service" field.
  addMHVitrineStructData(
    firestoreData,
    agendamentoMH.hasService() ? agendamentoMH.service : null,
    'service',
    forFieldValue,
  );

  // Add any Firestore field values
  agendamentoMH.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgendamentoMHListFirestoreData(
  List<AgendamentoMHStruct>? agendamentoMHs,
) =>
    agendamentoMHs
        ?.map((e) => getAgendamentoMHFirestoreData(e, true))
        .toList() ??
    [];
