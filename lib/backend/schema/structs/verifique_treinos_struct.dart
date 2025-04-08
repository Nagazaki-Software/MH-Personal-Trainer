// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerifiqueTreinosStruct extends FFFirebaseStruct {
  VerifiqueTreinosStruct({
    String? treino,
    DocumentReference? referenceSeriesRep,
    List<String>? treinos,
    String? uidCreateTreinos,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _treino = treino,
        _referenceSeriesRep = referenceSeriesRep,
        _treinos = treinos,
        _uidCreateTreinos = uidCreateTreinos,
        super(firestoreUtilData);

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  set treino(String? val) => _treino = val;

  bool hasTreino() => _treino != null;

  // "ReferenceSeriesRep" field.
  DocumentReference? _referenceSeriesRep;
  DocumentReference? get referenceSeriesRep => _referenceSeriesRep;
  set referenceSeriesRep(DocumentReference? val) => _referenceSeriesRep = val;

  bool hasReferenceSeriesRep() => _referenceSeriesRep != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  set treinos(List<String>? val) => _treinos = val;

  void updateTreinos(Function(List<String>) updateFn) {
    updateFn(_treinos ??= []);
  }

  bool hasTreinos() => _treinos != null;

  // "uidCreateTreinos" field.
  String? _uidCreateTreinos;
  String get uidCreateTreinos => _uidCreateTreinos ?? '';
  set uidCreateTreinos(String? val) => _uidCreateTreinos = val;

  bool hasUidCreateTreinos() => _uidCreateTreinos != null;

  static VerifiqueTreinosStruct fromMap(Map<String, dynamic> data) =>
      VerifiqueTreinosStruct(
        treino: data['treino'] as String?,
        referenceSeriesRep: data['ReferenceSeriesRep'] as DocumentReference?,
        treinos: getDataList(data['treinos']),
        uidCreateTreinos: data['uidCreateTreinos'] as String?,
      );

  static VerifiqueTreinosStruct? maybeFromMap(dynamic data) => data is Map
      ? VerifiqueTreinosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'treino': _treino,
        'ReferenceSeriesRep': _referenceSeriesRep,
        'treinos': _treinos,
        'uidCreateTreinos': _uidCreateTreinos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'treino': serializeParam(
          _treino,
          ParamType.String,
        ),
        'ReferenceSeriesRep': serializeParam(
          _referenceSeriesRep,
          ParamType.DocumentReference,
        ),
        'treinos': serializeParam(
          _treinos,
          ParamType.String,
          isList: true,
        ),
        'uidCreateTreinos': serializeParam(
          _uidCreateTreinos,
          ParamType.String,
        ),
      }.withoutNulls;

  static VerifiqueTreinosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VerifiqueTreinosStruct(
        treino: deserializeParam(
          data['treino'],
          ParamType.String,
          false,
        ),
        referenceSeriesRep: deserializeParam(
          data['ReferenceSeriesRep'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users', 'seriesRepeticoes'],
        ),
        treinos: deserializeParam<String>(
          data['treinos'],
          ParamType.String,
          true,
        ),
        uidCreateTreinos: deserializeParam(
          data['uidCreateTreinos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VerifiqueTreinosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VerifiqueTreinosStruct &&
        treino == other.treino &&
        referenceSeriesRep == other.referenceSeriesRep &&
        listEquality.equals(treinos, other.treinos) &&
        uidCreateTreinos == other.uidCreateTreinos;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([treino, referenceSeriesRep, treinos, uidCreateTreinos]);
}

VerifiqueTreinosStruct createVerifiqueTreinosStruct({
  String? treino,
  DocumentReference? referenceSeriesRep,
  String? uidCreateTreinos,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VerifiqueTreinosStruct(
      treino: treino,
      referenceSeriesRep: referenceSeriesRep,
      uidCreateTreinos: uidCreateTreinos,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VerifiqueTreinosStruct? updateVerifiqueTreinosStruct(
  VerifiqueTreinosStruct? verifiqueTreinos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    verifiqueTreinos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVerifiqueTreinosStructData(
  Map<String, dynamic> firestoreData,
  VerifiqueTreinosStruct? verifiqueTreinos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (verifiqueTreinos == null) {
    return;
  }
  if (verifiqueTreinos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && verifiqueTreinos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final verifiqueTreinosData =
      getVerifiqueTreinosFirestoreData(verifiqueTreinos, forFieldValue);
  final nestedData =
      verifiqueTreinosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = verifiqueTreinos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVerifiqueTreinosFirestoreData(
  VerifiqueTreinosStruct? verifiqueTreinos, [
  bool forFieldValue = false,
]) {
  if (verifiqueTreinos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(verifiqueTreinos.toMap());

  // Add any Firestore field values
  verifiqueTreinos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVerifiqueTreinosListFirestoreData(
  List<VerifiqueTreinosStruct>? verifiqueTreinoss,
) =>
    verifiqueTreinoss
        ?.map((e) => getVerifiqueTreinosFirestoreData(e, true))
        .toList() ??
    [];
