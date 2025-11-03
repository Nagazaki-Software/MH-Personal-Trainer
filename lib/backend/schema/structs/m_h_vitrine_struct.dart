// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MHVitrineStruct extends FFFirebaseStruct {
  MHVitrineStruct({
    String? servicos,
    String? descricao,
    double? valor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _servicos = servicos,
        _descricao = descricao,
        _valor = valor,
        super(firestoreUtilData);

  // "servicos" field.
  String? _servicos;
  String get servicos => _servicos ?? '';
  set servicos(String? val) => _servicos = val;

  bool hasServicos() => _servicos != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  static MHVitrineStruct fromMap(Map<String, dynamic> data) => MHVitrineStruct(
        servicos: data['servicos'] as String?,
        descricao: data['descricao'] as String?,
        valor: castToType<double>(data['valor']),
      );

  static MHVitrineStruct? maybeFromMap(dynamic data) => data is Map
      ? MHVitrineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'servicos': _servicos,
        'descricao': _descricao,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'servicos': serializeParam(
          _servicos,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
      }.withoutNulls;

  static MHVitrineStruct fromSerializableMap(Map<String, dynamic> data) =>
      MHVitrineStruct(
        servicos: deserializeParam(
          data['servicos'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MHVitrineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MHVitrineStruct &&
        servicos == other.servicos &&
        descricao == other.descricao &&
        valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([servicos, descricao, valor]);
}

MHVitrineStruct createMHVitrineStruct({
  String? servicos,
  String? descricao,
  double? valor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MHVitrineStruct(
      servicos: servicos,
      descricao: descricao,
      valor: valor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MHVitrineStruct? updateMHVitrineStruct(
  MHVitrineStruct? mHVitrine, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mHVitrine
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMHVitrineStructData(
  Map<String, dynamic> firestoreData,
  MHVitrineStruct? mHVitrine,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mHVitrine == null) {
    return;
  }
  if (mHVitrine.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mHVitrine.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mHVitrineData = getMHVitrineFirestoreData(mHVitrine, forFieldValue);
  final nestedData = mHVitrineData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mHVitrine.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMHVitrineFirestoreData(
  MHVitrineStruct? mHVitrine, [
  bool forFieldValue = false,
]) {
  if (mHVitrine == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mHVitrine.toMap());

  // Add any Firestore field values
  mHVitrine.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMHVitrineListFirestoreData(
  List<MHVitrineStruct>? mHVitrines,
) =>
    mHVitrines?.map((e) => getMHVitrineFirestoreData(e, true)).toList() ?? [];
