import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinorsRecord extends FirestoreRecord {
  TreinorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  // "treinos" field.
  List<String>? _treinos;
  List<String> get treinos => _treinos ?? const [];
  bool hasTreinos() => _treinos != null;

  // "treinosNoLIst" field.
  String? _treinosNoLIst;
  String get treinosNoLIst => _treinosNoLIst ?? '';
  bool hasTreinosNoLIst() => _treinosNoLIst != null;

  // "colecao" field.
  String? _colecao;
  String get colecao => _colecao ?? '';
  bool hasColecao() => _colecao != null;

  // "seriesRep" field.
  int? _seriesRep;
  int get seriesRep => _seriesRep ?? 0;
  bool hasSeriesRep() => _seriesRep != null;

  // "carga" field.
  int? _carga;
  int get carga => _carga ?? 0;
  bool hasCarga() => _carga != null;

  // "intervalo" field.
  int? _intervalo;
  int get intervalo => _intervalo ?? 0;
  bool hasIntervalo() => _intervalo != null;

  // "Adicionados" field.
  int? _adicionados;
  int get adicionados => _adicionados ?? 0;
  bool hasAdicionados() => _adicionados != null;

  // "fotoDoTreino" field.
  String? _fotoDoTreino;
  String get fotoDoTreino => _fotoDoTreino ?? '';
  bool hasFotoDoTreino() => _fotoDoTreino != null;

  // "uidDoUsuario" field.
  DocumentReference? _uidDoUsuario;
  DocumentReference? get uidDoUsuario => _uidDoUsuario;
  bool hasUidDoUsuario() => _uidDoUsuario != null;

  void _initializeFields() {
    _videoUrl = snapshotData['videoUrl'] as String?;
    _treinos = getDataList(snapshotData['treinos']);
    _treinosNoLIst = snapshotData['treinosNoLIst'] as String?;
    _colecao = snapshotData['colecao'] as String?;
    _seriesRep = castToType<int>(snapshotData['seriesRep']);
    _carga = castToType<int>(snapshotData['carga']);
    _intervalo = castToType<int>(snapshotData['intervalo']);
    _adicionados = castToType<int>(snapshotData['Adicionados']);
    _fotoDoTreino = snapshotData['fotoDoTreino'] as String?;
    _uidDoUsuario = snapshotData['uidDoUsuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinors');

  static Stream<TreinorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinorsRecord.fromSnapshot(s));

  static Future<TreinorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinorsRecord.fromSnapshot(s));

  static TreinorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinorsRecordData({
  String? videoUrl,
  String? treinosNoLIst,
  String? colecao,
  int? seriesRep,
  int? carga,
  int? intervalo,
  int? adicionados,
  String? fotoDoTreino,
  DocumentReference? uidDoUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'videoUrl': videoUrl,
      'treinosNoLIst': treinosNoLIst,
      'colecao': colecao,
      'seriesRep': seriesRep,
      'carga': carga,
      'intervalo': intervalo,
      'Adicionados': adicionados,
      'fotoDoTreino': fotoDoTreino,
      'uidDoUsuario': uidDoUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinorsRecordDocumentEquality implements Equality<TreinorsRecord> {
  const TreinorsRecordDocumentEquality();

  @override
  bool equals(TreinorsRecord? e1, TreinorsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.videoUrl == e2?.videoUrl &&
        listEquality.equals(e1?.treinos, e2?.treinos) &&
        e1?.treinosNoLIst == e2?.treinosNoLIst &&
        e1?.colecao == e2?.colecao &&
        e1?.seriesRep == e2?.seriesRep &&
        e1?.carga == e2?.carga &&
        e1?.intervalo == e2?.intervalo &&
        e1?.adicionados == e2?.adicionados &&
        e1?.fotoDoTreino == e2?.fotoDoTreino &&
        e1?.uidDoUsuario == e2?.uidDoUsuario;
  }

  @override
  int hash(TreinorsRecord? e) => const ListEquality().hash([
        e?.videoUrl,
        e?.treinos,
        e?.treinosNoLIst,
        e?.colecao,
        e?.seriesRep,
        e?.carga,
        e?.intervalo,
        e?.adicionados,
        e?.fotoDoTreino,
        e?.uidDoUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is TreinorsRecord;
}
