import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentosRecord extends FirestoreRecord {
  PagamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "valorDaCombranca" field.
  double? _valorDaCombranca;
  double get valorDaCombranca => _valorDaCombranca ?? 0.0;
  bool hasValorDaCombranca() => _valorDaCombranca != null;

  // "todoDiaDoMes" field.
  int? _todoDiaDoMes;
  int get todoDiaDoMes => _todoDiaDoMes ?? 0;
  bool hasTodoDiaDoMes() => _todoDiaDoMes != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Pago" field.
  bool? _pago;
  bool get pago => _pago ?? false;
  bool hasPago() => _pago != null;

  // "repetirPMes" field.
  int? _repetirPMes;
  int get repetirPMes => _repetirPMes ?? 0;
  bool hasRepetirPMes() => _repetirPMes != null;

  // "diaDoPagamento" field.
  int? _diaDoPagamento;
  int get diaDoPagamento => _diaDoPagamento ?? 0;
  bool hasDiaDoPagamento() => _diaDoPagamento != null;

  // "datas" field.
  List<DateTime>? _datas;
  List<DateTime> get datas => _datas ?? const [];
  bool hasDatas() => _datas != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _valorDaCombranca = castToType<double>(snapshotData['valorDaCombranca']);
    _todoDiaDoMes = castToType<int>(snapshotData['todoDiaDoMes']);
    _descricao = snapshotData['descricao'] as String?;
    _pago = snapshotData['Pago'] as bool?;
    _repetirPMes = castToType<int>(snapshotData['repetirPMes']);
    _diaDoPagamento = castToType<int>(snapshotData['diaDoPagamento']);
    _datas = getDataList(snapshotData['datas']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pagamentos')
          : FirebaseFirestore.instance.collectionGroup('pagamentos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('pagamentos').doc(id);

  static Stream<PagamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagamentosRecord.fromSnapshot(s));

  static Future<PagamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagamentosRecord.fromSnapshot(s));

  static PagamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PagamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagamentosRecordData({
  double? valorDaCombranca,
  int? todoDiaDoMes,
  String? descricao,
  bool? pago,
  int? repetirPMes,
  int? diaDoPagamento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valorDaCombranca': valorDaCombranca,
      'todoDiaDoMes': todoDiaDoMes,
      'descricao': descricao,
      'Pago': pago,
      'repetirPMes': repetirPMes,
      'diaDoPagamento': diaDoPagamento,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagamentosRecordDocumentEquality implements Equality<PagamentosRecord> {
  const PagamentosRecordDocumentEquality();

  @override
  bool equals(PagamentosRecord? e1, PagamentosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.valorDaCombranca == e2?.valorDaCombranca &&
        e1?.todoDiaDoMes == e2?.todoDiaDoMes &&
        e1?.descricao == e2?.descricao &&
        e1?.pago == e2?.pago &&
        e1?.repetirPMes == e2?.repetirPMes &&
        e1?.diaDoPagamento == e2?.diaDoPagamento &&
        listEquality.equals(e1?.datas, e2?.datas);
  }

  @override
  int hash(PagamentosRecord? e) => const ListEquality().hash([
        e?.valorDaCombranca,
        e?.todoDiaDoMes,
        e?.descricao,
        e?.pago,
        e?.repetirPMes,
        e?.diaDoPagamento,
        e?.datas
      ]);

  @override
  bool isValidKey(Object? o) => o is PagamentosRecord;
}
