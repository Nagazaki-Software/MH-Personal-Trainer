// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecomendacoesStruct extends FFFirebaseStruct {
  RecomendacoesStruct({
    DocumentReference? referenceTreinors,
    String? recomendacoes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _referenceTreinors = referenceTreinors,
        _recomendacoes = recomendacoes,
        super(firestoreUtilData);

  // "referenceTreinors" field.
  DocumentReference? _referenceTreinors;
  DocumentReference? get referenceTreinors => _referenceTreinors;
  set referenceTreinors(DocumentReference? val) => _referenceTreinors = val;

  bool hasReferenceTreinors() => _referenceTreinors != null;

  // "recomendacoes" field.
  String? _recomendacoes;
  String get recomendacoes => _recomendacoes ?? '';
  set recomendacoes(String? val) => _recomendacoes = val;

  bool hasRecomendacoes() => _recomendacoes != null;

  static RecomendacoesStruct fromMap(Map<String, dynamic> data) =>
      RecomendacoesStruct(
        referenceTreinors: data['referenceTreinors'] as DocumentReference?,
        recomendacoes: data['recomendacoes'] as String?,
      );

  static RecomendacoesStruct? maybeFromMap(dynamic data) => data is Map
      ? RecomendacoesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'referenceTreinors': _referenceTreinors,
        'recomendacoes': _recomendacoes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceTreinors': serializeParam(
          _referenceTreinors,
          ParamType.DocumentReference,
        ),
        'recomendacoes': serializeParam(
          _recomendacoes,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecomendacoesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecomendacoesStruct(
        referenceTreinors: deserializeParam(
          data['referenceTreinors'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['treinors'],
        ),
        recomendacoes: deserializeParam(
          data['recomendacoes'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecomendacoesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecomendacoesStruct &&
        referenceTreinors == other.referenceTreinors &&
        recomendacoes == other.recomendacoes;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([referenceTreinors, recomendacoes]);
}

RecomendacoesStruct createRecomendacoesStruct({
  DocumentReference? referenceTreinors,
  String? recomendacoes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecomendacoesStruct(
      referenceTreinors: referenceTreinors,
      recomendacoes: recomendacoes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecomendacoesStruct? updateRecomendacoesStruct(
  RecomendacoesStruct? recomendacoesStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recomendacoesStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecomendacoesStructData(
  Map<String, dynamic> firestoreData,
  RecomendacoesStruct? recomendacoesStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recomendacoesStruct == null) {
    return;
  }
  if (recomendacoesStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recomendacoesStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recomendacoesStructData =
      getRecomendacoesFirestoreData(recomendacoesStruct, forFieldValue);
  final nestedData =
      recomendacoesStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      recomendacoesStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecomendacoesFirestoreData(
  RecomendacoesStruct? recomendacoesStruct, [
  bool forFieldValue = false,
]) {
  if (recomendacoesStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recomendacoesStruct.toMap());

  // Add any Firestore field values
  recomendacoesStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecomendacoesListFirestoreData(
  List<RecomendacoesStruct>? recomendacoesStructs,
) =>
    recomendacoesStructs
        ?.map((e) => getRecomendacoesFirestoreData(e, true))
        .toList() ??
    [];
