import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerguntasDasAvaliacoesPersonalizadasRecord extends FirestoreRecord {
  PerguntasDasAvaliacoesPersonalizadasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pergunta" field.
  String? _pergunta;
  String get pergunta => _pergunta ?? '';
  bool hasPergunta() => _pergunta != null;

  // "respostaCerta" field.
  String? _respostaCerta;
  String get respostaCerta => _respostaCerta ?? '';
  bool hasRespostaCerta() => _respostaCerta != null;

  // "uidDaAvaliacao" field.
  String? _uidDaAvaliacao;
  String get uidDaAvaliacao => _uidDaAvaliacao ?? '';
  bool hasUidDaAvaliacao() => _uidDaAvaliacao != null;

  // "multiplaEscolha" field.
  bool? _multiplaEscolha;
  bool get multiplaEscolha => _multiplaEscolha ?? false;
  bool hasMultiplaEscolha() => _multiplaEscolha != null;

  // "numero" field.
  bool? _numero;
  bool get numero => _numero ?? false;
  bool hasNumero() => _numero != null;

  // "texto" field.
  bool? _texto;
  bool get texto => _texto ?? false;
  bool hasTexto() => _texto != null;

  // "outrasrepostas1" field.
  String? _outrasrepostas1;
  String get outrasrepostas1 => _outrasrepostas1 ?? '';
  bool hasOutrasrepostas1() => _outrasrepostas1 != null;

  // "outrasrespostas2" field.
  String? _outrasrespostas2;
  String get outrasrespostas2 => _outrasrespostas2 ?? '';
  bool hasOutrasrespostas2() => _outrasrespostas2 != null;

  // "outrasrespostas3" field.
  String? _outrasrespostas3;
  String get outrasrespostas3 => _outrasrespostas3 ?? '';
  bool hasOutrasrespostas3() => _outrasrespostas3 != null;

  // "sim" field.
  bool? _sim;
  bool get sim => _sim ?? false;
  bool hasSim() => _sim != null;

  // "nao" field.
  bool? _nao;
  bool get nao => _nao ?? false;
  bool hasNao() => _nao != null;

  // "respostasMultiplas" field.
  List<String>? _respostasMultiplas;
  List<String> get respostasMultiplas => _respostasMultiplas ?? const [];
  bool hasRespostasMultiplas() => _respostasMultiplas != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _pergunta = snapshotData['pergunta'] as String?;
    _respostaCerta = snapshotData['respostaCerta'] as String?;
    _uidDaAvaliacao = snapshotData['uidDaAvaliacao'] as String?;
    _multiplaEscolha = snapshotData['multiplaEscolha'] as bool?;
    _numero = snapshotData['numero'] as bool?;
    _texto = snapshotData['texto'] as bool?;
    _outrasrepostas1 = snapshotData['outrasrepostas1'] as String?;
    _outrasrespostas2 = snapshotData['outrasrespostas2'] as String?;
    _outrasrespostas3 = snapshotData['outrasrespostas3'] as String?;
    _sim = snapshotData['sim'] as bool?;
    _nao = snapshotData['nao'] as bool?;
    _respostasMultiplas = getDataList(snapshotData['respostasMultiplas']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('perguntasDasAvaliacoesPersonalizadas')
          : FirebaseFirestore.instance
              .collectionGroup('perguntasDasAvaliacoesPersonalizadas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('perguntasDasAvaliacoesPersonalizadas').doc(id);

  static Stream<PerguntasDasAvaliacoesPersonalizadasRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => PerguntasDasAvaliacoesPersonalizadasRecord.fromSnapshot(s));

  static Future<PerguntasDasAvaliacoesPersonalizadasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => PerguntasDasAvaliacoesPersonalizadasRecord.fromSnapshot(s));

  static PerguntasDasAvaliacoesPersonalizadasRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      PerguntasDasAvaliacoesPersonalizadasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PerguntasDasAvaliacoesPersonalizadasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PerguntasDasAvaliacoesPersonalizadasRecord._(
          reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PerguntasDasAvaliacoesPersonalizadasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PerguntasDasAvaliacoesPersonalizadasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPerguntasDasAvaliacoesPersonalizadasRecordData({
  String? pergunta,
  String? respostaCerta,
  String? uidDaAvaliacao,
  bool? multiplaEscolha,
  bool? numero,
  bool? texto,
  String? outrasrepostas1,
  String? outrasrespostas2,
  String? outrasrespostas3,
  bool? sim,
  bool? nao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pergunta': pergunta,
      'respostaCerta': respostaCerta,
      'uidDaAvaliacao': uidDaAvaliacao,
      'multiplaEscolha': multiplaEscolha,
      'numero': numero,
      'texto': texto,
      'outrasrepostas1': outrasrepostas1,
      'outrasrespostas2': outrasrespostas2,
      'outrasrespostas3': outrasrespostas3,
      'sim': sim,
      'nao': nao,
    }.withoutNulls,
  );

  return firestoreData;
}

class PerguntasDasAvaliacoesPersonalizadasRecordDocumentEquality
    implements Equality<PerguntasDasAvaliacoesPersonalizadasRecord> {
  const PerguntasDasAvaliacoesPersonalizadasRecordDocumentEquality();

  @override
  bool equals(PerguntasDasAvaliacoesPersonalizadasRecord? e1,
      PerguntasDasAvaliacoesPersonalizadasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pergunta == e2?.pergunta &&
        e1?.respostaCerta == e2?.respostaCerta &&
        e1?.uidDaAvaliacao == e2?.uidDaAvaliacao &&
        e1?.multiplaEscolha == e2?.multiplaEscolha &&
        e1?.numero == e2?.numero &&
        e1?.texto == e2?.texto &&
        e1?.outrasrepostas1 == e2?.outrasrepostas1 &&
        e1?.outrasrespostas2 == e2?.outrasrespostas2 &&
        e1?.outrasrespostas3 == e2?.outrasrespostas3 &&
        e1?.sim == e2?.sim &&
        e1?.nao == e2?.nao &&
        listEquality.equals(e1?.respostasMultiplas, e2?.respostasMultiplas);
  }

  @override
  int hash(PerguntasDasAvaliacoesPersonalizadasRecord? e) =>
      const ListEquality().hash([
        e?.pergunta,
        e?.respostaCerta,
        e?.uidDaAvaliacao,
        e?.multiplaEscolha,
        e?.numero,
        e?.texto,
        e?.outrasrepostas1,
        e?.outrasrespostas2,
        e?.outrasrespostas3,
        e?.sim,
        e?.nao,
        e?.respostasMultiplas
      ]);

  @override
  bool isValidKey(Object? o) => o is PerguntasDasAvaliacoesPersonalizadasRecord;
}
