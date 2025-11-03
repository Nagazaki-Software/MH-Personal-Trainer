import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupporteRecord extends FirestoreRecord {
  SupporteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  bool hasTexto() => _texto != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "d" field.
  DateTime? _d;
  DateTime? get d => _d;
  bool hasD() => _d != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "resposta" field.
  String? _resposta;
  String get resposta => _resposta ?? '';
  bool hasResposta() => _resposta != null;

  void _initializeFields() {
    _texto = snapshotData['texto'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _d = snapshotData['d'] as DateTime?;
    _categoria = snapshotData['categoria'] as String?;
    _priority = snapshotData['priority'] as String?;
    _fotos = getDataList(snapshotData['fotos']);
    _user = snapshotData['user'] as DocumentReference?;
    _resposta = snapshotData['resposta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('supporte');

  static Stream<SupporteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupporteRecord.fromSnapshot(s));

  static Future<SupporteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupporteRecord.fromSnapshot(s));

  static SupporteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupporteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupporteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupporteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupporteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupporteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupporteRecordData({
  String? texto,
  String? titulo,
  DateTime? d,
  String? categoria,
  String? priority,
  DocumentReference? user,
  String? resposta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'texto': texto,
      'titulo': titulo,
      'd': d,
      'categoria': categoria,
      'priority': priority,
      'user': user,
      'resposta': resposta,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupporteRecordDocumentEquality implements Equality<SupporteRecord> {
  const SupporteRecordDocumentEquality();

  @override
  bool equals(SupporteRecord? e1, SupporteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.texto == e2?.texto &&
        e1?.titulo == e2?.titulo &&
        e1?.d == e2?.d &&
        e1?.categoria == e2?.categoria &&
        e1?.priority == e2?.priority &&
        listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.user == e2?.user &&
        e1?.resposta == e2?.resposta;
  }

  @override
  int hash(SupporteRecord? e) => const ListEquality().hash([
        e?.texto,
        e?.titulo,
        e?.d,
        e?.categoria,
        e?.priority,
        e?.fotos,
        e?.user,
        e?.resposta
      ]);

  @override
  bool isValidKey(Object? o) => o is SupporteRecord;
}
