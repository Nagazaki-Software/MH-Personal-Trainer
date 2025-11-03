import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AerobicoRecord extends FirestoreRecord {
  AerobicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedoprotocolo" field.
  String? _nomedoprotocolo;
  String get nomedoprotocolo => _nomedoprotocolo ?? '';
  bool hasNomedoprotocolo() => _nomedoprotocolo != null;

  // "ergometro" field.
  String? _ergometro;
  String get ergometro => _ergometro ?? '';
  bool hasErgometro() => _ergometro != null;

  // "pace" field.
  String? _pace;
  String get pace => _pace ?? '';
  bool hasPace() => _pace != null;

  // "aquecimento" field.
  String? _aquecimento;
  String get aquecimento => _aquecimento ?? '';
  bool hasAquecimento() => _aquecimento != null;

  // "treino" field.
  String? _treino;
  String get treino => _treino ?? '';
  bool hasTreino() => _treino != null;

  // "voltaacalma" field.
  String? _voltaacalma;
  String get voltaacalma => _voltaacalma ?? '';
  bool hasVoltaacalma() => _voltaacalma != null;

  // "observacoes" field.
  String? _observacoes;
  String get observacoes => _observacoes ?? '';
  bool hasObservacoes() => _observacoes != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  bool hasTreinos() => _treinos != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomedoprotocolo = snapshotData['nomedoprotocolo'] as String?;
    _ergometro = snapshotData['ergometro'] as String?;
    _pace = snapshotData['pace'] as String?;
    _aquecimento = snapshotData['aquecimento'] as String?;
    _treino = snapshotData['treino'] as String?;
    _voltaacalma = snapshotData['voltaacalma'] as String?;
    _observacoes = snapshotData['observacoes'] as String?;
    _treinos = getDataList(snapshotData['treinos']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('aerobico')
          : FirebaseFirestore.instance.collectionGroup('aerobico');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('aerobico').doc(id);

  static Stream<AerobicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AerobicoRecord.fromSnapshot(s));

  static Future<AerobicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AerobicoRecord.fromSnapshot(s));

  static AerobicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AerobicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AerobicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AerobicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AerobicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AerobicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAerobicoRecordData({
  String? nomedoprotocolo,
  String? ergometro,
  String? pace,
  String? aquecimento,
  String? treino,
  String? voltaacalma,
  String? observacoes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedoprotocolo': nomedoprotocolo,
      'ergometro': ergometro,
      'pace': pace,
      'aquecimento': aquecimento,
      'treino': treino,
      'voltaacalma': voltaacalma,
      'observacoes': observacoes,
    }.withoutNulls,
  );

  return firestoreData;
}

class AerobicoRecordDocumentEquality implements Equality<AerobicoRecord> {
  const AerobicoRecordDocumentEquality();

  @override
  bool equals(AerobicoRecord? e1, AerobicoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomedoprotocolo == e2?.nomedoprotocolo &&
        e1?.ergometro == e2?.ergometro &&
        e1?.pace == e2?.pace &&
        e1?.aquecimento == e2?.aquecimento &&
        e1?.treino == e2?.treino &&
        e1?.voltaacalma == e2?.voltaacalma &&
        e1?.observacoes == e2?.observacoes &&
        listEquality.equals(e1?.treinos, e2?.treinos);
  }

  @override
  int hash(AerobicoRecord? e) => const ListEquality().hash([
        e?.nomedoprotocolo,
        e?.ergometro,
        e?.pace,
        e?.aquecimento,
        e?.treino,
        e?.voltaacalma,
        e?.observacoes,
        e?.treinos
      ]);

  @override
  bool isValidKey(Object? o) => o is AerobicoRecord;
}
