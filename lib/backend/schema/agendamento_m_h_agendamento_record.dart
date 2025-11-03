import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentoMHAgendamentoRecord extends FirestoreRecord {
  AgendamentoMHAgendamentoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  bool hasDia() => _dia != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dia = snapshotData['dia'] as DateTime?;
    _horario = snapshotData['horario'] as String?;
    _personal = snapshotData['personal'] as DocumentReference?;
    _ativo = snapshotData['ativo'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('agendamentoMHAgendamento')
          : FirebaseFirestore.instance
              .collectionGroup('agendamentoMHAgendamento');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('agendamentoMHAgendamento').doc(id);

  static Stream<AgendamentoMHAgendamentoRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => AgendamentoMHAgendamentoRecord.fromSnapshot(s));

  static Future<AgendamentoMHAgendamentoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AgendamentoMHAgendamentoRecord.fromSnapshot(s));

  static AgendamentoMHAgendamentoRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      AgendamentoMHAgendamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendamentoMHAgendamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendamentoMHAgendamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendamentoMHAgendamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendamentoMHAgendamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendamentoMHAgendamentoRecordData({
  DateTime? dia,
  String? horario,
  DocumentReference? personal,
  bool? ativo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dia': dia,
      'horario': horario,
      'personal': personal,
      'ativo': ativo,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendamentoMHAgendamentoRecordDocumentEquality
    implements Equality<AgendamentoMHAgendamentoRecord> {
  const AgendamentoMHAgendamentoRecordDocumentEquality();

  @override
  bool equals(
      AgendamentoMHAgendamentoRecord? e1, AgendamentoMHAgendamentoRecord? e2) {
    return e1?.dia == e2?.dia &&
        e1?.horario == e2?.horario &&
        e1?.personal == e2?.personal &&
        e1?.ativo == e2?.ativo;
  }

  @override
  int hash(AgendamentoMHAgendamentoRecord? e) =>
      const ListEquality().hash([e?.dia, e?.horario, e?.personal, e?.ativo]);

  @override
  bool isValidKey(Object? o) => o is AgendamentoMHAgendamentoRecord;
}
