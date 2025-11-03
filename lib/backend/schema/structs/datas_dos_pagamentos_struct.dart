// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatasDosPagamentosStruct extends FFFirebaseStruct {
  DatasDosPagamentosStruct({
    DateTime? data,
    bool? pago,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        _pago = pago,
        super(firestoreUtilData);

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "pago" field.
  bool? _pago;
  bool get pago => _pago ?? false;
  set pago(bool? val) => _pago = val;

  bool hasPago() => _pago != null;

  static DatasDosPagamentosStruct fromMap(Map<String, dynamic> data) =>
      DatasDosPagamentosStruct(
        data: data['data'] as DateTime?,
        pago: data['pago'] as bool?,
      );

  static DatasDosPagamentosStruct? maybeFromMap(dynamic data) => data is Map
      ? DatasDosPagamentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
        'pago': _pago,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'pago': serializeParam(
          _pago,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DatasDosPagamentosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DatasDosPagamentosStruct(
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        pago: deserializeParam(
          data['pago'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DatasDosPagamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatasDosPagamentosStruct &&
        data == other.data &&
        pago == other.pago;
  }

  @override
  int get hashCode => const ListEquality().hash([data, pago]);
}

DatasDosPagamentosStruct createDatasDosPagamentosStruct({
  DateTime? data,
  bool? pago,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DatasDosPagamentosStruct(
      data: data,
      pago: pago,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DatasDosPagamentosStruct? updateDatasDosPagamentosStruct(
  DatasDosPagamentosStruct? datasDosPagamentos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    datasDosPagamentos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDatasDosPagamentosStructData(
  Map<String, dynamic> firestoreData,
  DatasDosPagamentosStruct? datasDosPagamentos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (datasDosPagamentos == null) {
    return;
  }
  if (datasDosPagamentos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && datasDosPagamentos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final datasDosPagamentosData =
      getDatasDosPagamentosFirestoreData(datasDosPagamentos, forFieldValue);
  final nestedData =
      datasDosPagamentosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      datasDosPagamentos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDatasDosPagamentosFirestoreData(
  DatasDosPagamentosStruct? datasDosPagamentos, [
  bool forFieldValue = false,
]) {
  if (datasDosPagamentos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(datasDosPagamentos.toMap());

  // Add any Firestore field values
  datasDosPagamentos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDatasDosPagamentosListFirestoreData(
  List<DatasDosPagamentosStruct>? datasDosPagamentoss,
) =>
    datasDosPagamentoss
        ?.map((e) => getDatasDosPagamentosFirestoreData(e, true))
        .toList() ??
    [];
