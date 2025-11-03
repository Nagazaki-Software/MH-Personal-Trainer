import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversaRecord extends FirestoreRecord {
  ConversaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  // "Aluno" field.
  DocumentReference? _aluno;
  DocumentReference? get aluno => _aluno;
  bool hasAluno() => _aluno != null;

  // "diaDaUltimaConversa" field.
  DateTime? _diaDaUltimaConversa;
  DateTime? get diaDaUltimaConversa => _diaDaUltimaConversa;
  bool hasDiaDaUltimaConversa() => _diaDaUltimaConversa != null;

  // "ultimaMsg" field.
  String? _ultimaMsg;
  String get ultimaMsg => _ultimaMsg ?? '';
  bool hasUltimaMsg() => _ultimaMsg != null;

  void _initializeFields() {
    _personal = snapshotData['Personal'] as DocumentReference?;
    _aluno = snapshotData['Aluno'] as DocumentReference?;
    _diaDaUltimaConversa = snapshotData['diaDaUltimaConversa'] as DateTime?;
    _ultimaMsg = snapshotData['ultimaMsg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conversa');

  static Stream<ConversaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConversaRecord.fromSnapshot(s));

  static Future<ConversaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConversaRecord.fromSnapshot(s));

  static ConversaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConversaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConversaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConversaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConversaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConversaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConversaRecordData({
  DocumentReference? personal,
  DocumentReference? aluno,
  DateTime? diaDaUltimaConversa,
  String? ultimaMsg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Personal': personal,
      'Aluno': aluno,
      'diaDaUltimaConversa': diaDaUltimaConversa,
      'ultimaMsg': ultimaMsg,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConversaRecordDocumentEquality implements Equality<ConversaRecord> {
  const ConversaRecordDocumentEquality();

  @override
  bool equals(ConversaRecord? e1, ConversaRecord? e2) {
    return e1?.personal == e2?.personal &&
        e1?.aluno == e2?.aluno &&
        e1?.diaDaUltimaConversa == e2?.diaDaUltimaConversa &&
        e1?.ultimaMsg == e2?.ultimaMsg;
  }

  @override
  int hash(ConversaRecord? e) => const ListEquality()
      .hash([e?.personal, e?.aluno, e?.diaDaUltimaConversa, e?.ultimaMsg]);

  @override
  bool isValidKey(Object? o) => o is ConversaRecord;
}
