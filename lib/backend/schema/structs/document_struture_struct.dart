// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentStrutureStruct extends FFFirebaseStruct {
  DocumentStrutureStruct({
    String? rotinaDeTreino,
    DateTime? date,
    List<String>? treinos,
    int? cargasInt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rotinaDeTreino = rotinaDeTreino,
        _date = date,
        _treinos = treinos,
        _cargasInt = cargasInt,
        super(firestoreUtilData);

  // "rotinaDeTreino" field.
  String? _rotinaDeTreino;
  String get rotinaDeTreino => _rotinaDeTreino ?? '';
  set rotinaDeTreino(String? val) => _rotinaDeTreino = val;

  bool hasRotinaDeTreino() => _rotinaDeTreino != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  set treinos(List<String>? val) => _treinos = val;

  void updateTreinos(Function(List<String>) updateFn) {
    updateFn(_treinos ??= []);
  }

  bool hasTreinos() => _treinos != null;

  // "cargasInt" field.
  int? _cargasInt;
  int get cargasInt => _cargasInt ?? 0;
  set cargasInt(int? val) => _cargasInt = val;

  void incrementCargasInt(int amount) => cargasInt = cargasInt + amount;

  bool hasCargasInt() => _cargasInt != null;

  static DocumentStrutureStruct fromMap(Map<String, dynamic> data) =>
      DocumentStrutureStruct(
        rotinaDeTreino: data['rotinaDeTreino'] as String?,
        date: data['date'] as DateTime?,
        treinos: getDataList(data['treinos']),
        cargasInt: castToType<int>(data['cargasInt']),
      );

  static DocumentStrutureStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentStrutureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'rotinaDeTreino': _rotinaDeTreino,
        'date': _date,
        'treinos': _treinos,
        'cargasInt': _cargasInt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rotinaDeTreino': serializeParam(
          _rotinaDeTreino,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'treinos': serializeParam(
          _treinos,
          ParamType.String,
          isList: true,
        ),
        'cargasInt': serializeParam(
          _cargasInt,
          ParamType.int,
        ),
      }.withoutNulls;

  static DocumentStrutureStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DocumentStrutureStruct(
        rotinaDeTreino: deserializeParam(
          data['rotinaDeTreino'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        treinos: deserializeParam<String>(
          data['treinos'],
          ParamType.String,
          true,
        ),
        cargasInt: deserializeParam(
          data['cargasInt'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DocumentStrutureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DocumentStrutureStruct &&
        rotinaDeTreino == other.rotinaDeTreino &&
        date == other.date &&
        listEquality.equals(treinos, other.treinos) &&
        cargasInt == other.cargasInt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([rotinaDeTreino, date, treinos, cargasInt]);
}

DocumentStrutureStruct createDocumentStrutureStruct({
  String? rotinaDeTreino,
  DateTime? date,
  int? cargasInt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentStrutureStruct(
      rotinaDeTreino: rotinaDeTreino,
      date: date,
      cargasInt: cargasInt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentStrutureStruct? updateDocumentStrutureStruct(
  DocumentStrutureStruct? documentStruture, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    documentStruture
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentStrutureStructData(
  Map<String, dynamic> firestoreData,
  DocumentStrutureStruct? documentStruture,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (documentStruture == null) {
    return;
  }
  if (documentStruture.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && documentStruture.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentStrutureData =
      getDocumentStrutureFirestoreData(documentStruture, forFieldValue);
  final nestedData =
      documentStrutureData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = documentStruture.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentStrutureFirestoreData(
  DocumentStrutureStruct? documentStruture, [
  bool forFieldValue = false,
]) {
  if (documentStruture == null) {
    return {};
  }
  final firestoreData = mapToFirestore(documentStruture.toMap());

  // Add any Firestore field values
  documentStruture.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentStrutureListFirestoreData(
  List<DocumentStrutureStruct>? documentStrutures,
) =>
    documentStrutures
        ?.map((e) => getDocumentStrutureFirestoreData(e, true))
        .toList() ??
    [];
