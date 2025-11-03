// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacaesPersonalStruct extends FFFirebaseStruct {
  AvaliacaesPersonalStruct({
    DocumentReference? user,
    double? rating,
    String? avaliacao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        _rating = rating,
        _avaliacao = avaliacao,
        super(firestoreUtilData);

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "avaliacao" field.
  String? _avaliacao;
  String get avaliacao => _avaliacao ?? '';
  set avaliacao(String? val) => _avaliacao = val;

  bool hasAvaliacao() => _avaliacao != null;

  static AvaliacaesPersonalStruct fromMap(Map<String, dynamic> data) =>
      AvaliacaesPersonalStruct(
        user: data['user'] as DocumentReference?,
        rating: castToType<double>(data['rating']),
        avaliacao: data['avaliacao'] as String?,
      );

  static AvaliacaesPersonalStruct? maybeFromMap(dynamic data) => data is Map
      ? AvaliacaesPersonalStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
        'rating': _rating,
        'avaliacao': _avaliacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'avaliacao': serializeParam(
          _avaliacao,
          ParamType.String,
        ),
      }.withoutNulls;

  static AvaliacaesPersonalStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AvaliacaesPersonalStruct(
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        avaliacao: deserializeParam(
          data['avaliacao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AvaliacaesPersonalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AvaliacaesPersonalStruct &&
        user == other.user &&
        rating == other.rating &&
        avaliacao == other.avaliacao;
  }

  @override
  int get hashCode => const ListEquality().hash([user, rating, avaliacao]);
}

AvaliacaesPersonalStruct createAvaliacaesPersonalStruct({
  DocumentReference? user,
  double? rating,
  String? avaliacao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AvaliacaesPersonalStruct(
      user: user,
      rating: rating,
      avaliacao: avaliacao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AvaliacaesPersonalStruct? updateAvaliacaesPersonalStruct(
  AvaliacaesPersonalStruct? avaliacaesPersonal, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    avaliacaesPersonal
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAvaliacaesPersonalStructData(
  Map<String, dynamic> firestoreData,
  AvaliacaesPersonalStruct? avaliacaesPersonal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (avaliacaesPersonal == null) {
    return;
  }
  if (avaliacaesPersonal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && avaliacaesPersonal.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final avaliacaesPersonalData =
      getAvaliacaesPersonalFirestoreData(avaliacaesPersonal, forFieldValue);
  final nestedData =
      avaliacaesPersonalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      avaliacaesPersonal.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAvaliacaesPersonalFirestoreData(
  AvaliacaesPersonalStruct? avaliacaesPersonal, [
  bool forFieldValue = false,
]) {
  if (avaliacaesPersonal == null) {
    return {};
  }
  final firestoreData = mapToFirestore(avaliacaesPersonal.toMap());

  // Add any Firestore field values
  avaliacaesPersonal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAvaliacaesPersonalListFirestoreData(
  List<AvaliacaesPersonalStruct>? avaliacaesPersonals,
) =>
    avaliacaesPersonals
        ?.map((e) => getAvaliacaesPersonalFirestoreData(e, true))
        .toList() ??
    [];
