import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificacaoRecord extends FirestoreRecord {
  NotificacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "para" field.
  String? _para;
  String get para => _para ?? '';
  bool hasPara() => _para != null;

  // "avOnline" field.
  DocumentReference? _avOnline;
  DocumentReference? get avOnline => _avOnline;
  bool hasAvOnline() => _avOnline != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "paraTodos" field.
  bool? _paraTodos;
  bool get paraTodos => _paraTodos ?? false;
  bool hasParaTodos() => _paraTodos != null;

  // "treino" field.
  DocumentReference? _treino;
  DocumentReference? get treino => _treino;
  bool hasTreino() => _treino != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _para = snapshotData['para'] as String?;
    _avOnline = snapshotData['avOnline'] as DocumentReference?;
    _tipo = snapshotData['tipo'] as String?;
    _paraTodos = snapshotData['paraTodos'] as bool?;
    _treino = snapshotData['treino'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notificacao');

  static Stream<NotificacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificacaoRecord.fromSnapshot(s));

  static Future<NotificacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificacaoRecord.fromSnapshot(s));

  static NotificacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificacaoRecordData({
  String? titulo,
  String? descricao,
  DateTime? data,
  String? para,
  DocumentReference? avOnline,
  String? tipo,
  bool? paraTodos,
  DocumentReference? treino,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descricao': descricao,
      'data': data,
      'para': para,
      'avOnline': avOnline,
      'tipo': tipo,
      'paraTodos': paraTodos,
      'treino': treino,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificacaoRecordDocumentEquality implements Equality<NotificacaoRecord> {
  const NotificacaoRecordDocumentEquality();

  @override
  bool equals(NotificacaoRecord? e1, NotificacaoRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.data == e2?.data &&
        e1?.para == e2?.para &&
        e1?.avOnline == e2?.avOnline &&
        e1?.tipo == e2?.tipo &&
        e1?.paraTodos == e2?.paraTodos &&
        e1?.treino == e2?.treino;
  }

  @override
  int hash(NotificacaoRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descricao,
        e?.data,
        e?.para,
        e?.avOnline,
        e?.tipo,
        e?.paraTodos,
        e?.treino
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificacaoRecord;
}
