import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacaoOnlineRecord extends FirestoreRecord {
  AvaliacaoOnlineRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "abdominal" field.
  String? _abdominal;
  String get abdominal => _abdominal ?? '';
  bool hasAbdominal() => _abdominal != null;

  // "antebracoDireito" field.
  String? _antebracoDireito;
  String get antebracoDireito => _antebracoDireito ?? '';
  bool hasAntebracoDireito() => _antebracoDireito != null;

  // "bicipesRelaxado" field.
  String? _bicipesRelaxado;
  String get bicipesRelaxado => _bicipesRelaxado ?? '';
  bool hasBicipesRelaxado() => _bicipesRelaxado != null;

  // "cintura" field.
  String? _cintura;
  String get cintura => _cintura ?? '';
  bool hasCintura() => _cintura != null;

  // "coxaMedial" field.
  String? _coxaMedial;
  String get coxaMedial => _coxaMedial ?? '';
  bool hasCoxaMedial() => _coxaMedial != null;

  // "dataAvaliacao" field.
  String? _dataAvaliacao;
  String get dataAvaliacao => _dataAvaliacao ?? '';
  bool hasDataAvaliacao() => _dataAvaliacao != null;

  // "estatura" field.
  double? _estatura;
  double get estatura => _estatura ?? 0.0;
  bool hasEstatura() => _estatura != null;

  // "fotoDeCostas" field.
  String? _fotoDeCostas;
  String get fotoDeCostas => _fotoDeCostas ?? '';
  bool hasFotoDeCostas() => _fotoDeCostas != null;

  // "fotoDeFrente" field.
  String? _fotoDeFrente;
  String get fotoDeFrente => _fotoDeFrente ?? '';
  bool hasFotoDeFrente() => _fotoDeFrente != null;

  // "fotoDeLado" field.
  String? _fotoDeLado;
  String get fotoDeLado => _fotoDeLado ?? '';
  bool hasFotoDeLado() => _fotoDeLado != null;

  // "peitoral" field.
  String? _peitoral;
  String get peitoral => _peitoral ?? '';
  bool hasPeitoral() => _peitoral != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "quadril" field.
  String? _quadril;
  String get quadril => _quadril ?? '';
  bool hasQuadril() => _quadril != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "pergunta1" field.
  String? _pergunta1;
  String get pergunta1 => _pergunta1 ?? '';
  bool hasPergunta1() => _pergunta1 != null;

  // "pergunta2" field.
  String? _pergunta2;
  String get pergunta2 => _pergunta2 ?? '';
  bool hasPergunta2() => _pergunta2 != null;

  // "pergunta3" field.
  String? _pergunta3;
  String get pergunta3 => _pergunta3 ?? '';
  bool hasPergunta3() => _pergunta3 != null;

  // "pergunta4" field.
  String? _pergunta4;
  String get pergunta4 => _pergunta4 ?? '';
  bool hasPergunta4() => _pergunta4 != null;

  // "pergunta5" field.
  String? _pergunta5;
  String get pergunta5 => _pergunta5 ?? '';
  bool hasPergunta5() => _pergunta5 != null;

  // "pergunta6" field.
  String? _pergunta6;
  String get pergunta6 => _pergunta6 ?? '';
  bool hasPergunta6() => _pergunta6 != null;

  // "pergunta7" field.
  String? _pergunta7;
  String get pergunta7 => _pergunta7 ?? '';
  bool hasPergunta7() => _pergunta7 != null;

  // "pergunta8" field.
  String? _pergunta8;
  String get pergunta8 => _pergunta8 ?? '';
  bool hasPergunta8() => _pergunta8 != null;

  // "pergunta9" field.
  String? _pergunta9;
  String get pergunta9 => _pergunta9 ?? '';
  bool hasPergunta9() => _pergunta9 != null;

  // "pergunta10" field.
  String? _pergunta10;
  String get pergunta10 => _pergunta10 ?? '';
  bool hasPergunta10() => _pergunta10 != null;

  // "avalicaoOnline" field.
  bool? _avalicaoOnline;
  bool get avalicaoOnline => _avalicaoOnline ?? false;
  bool hasAvalicaoOnline() => _avalicaoOnline != null;

  // "avaliacaoPresencial" field.
  bool? _avaliacaoPresencial;
  bool get avaliacaoPresencial => _avaliacaoPresencial ?? false;
  bool hasAvaliacaoPresencial() => _avaliacaoPresencial != null;

  // "horas" field.
  String? _horas;
  String get horas => _horas ?? '';
  bool hasHoras() => _horas != null;

  // "minutos" field.
  String? _minutos;
  String get minutos => _minutos ?? '';
  bool hasMinutos() => _minutos != null;

  // "nomeDaAvaliacao" field.
  String? _nomeDaAvaliacao;
  String get nomeDaAvaliacao => _nomeDaAvaliacao ?? '';
  bool hasNomeDaAvaliacao() => _nomeDaAvaliacao != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _abdominal = snapshotData['abdominal'] as String?;
    _antebracoDireito = snapshotData['antebracoDireito'] as String?;
    _bicipesRelaxado = snapshotData['bicipesRelaxado'] as String?;
    _cintura = snapshotData['cintura'] as String?;
    _coxaMedial = snapshotData['coxaMedial'] as String?;
    _dataAvaliacao = snapshotData['dataAvaliacao'] as String?;
    _estatura = castToType<double>(snapshotData['estatura']);
    _fotoDeCostas = snapshotData['fotoDeCostas'] as String?;
    _fotoDeFrente = snapshotData['fotoDeFrente'] as String?;
    _fotoDeLado = snapshotData['fotoDeLado'] as String?;
    _peitoral = snapshotData['peitoral'] as String?;
    _peso = castToType<double>(snapshotData['peso']);
    _quadril = snapshotData['quadril'] as String?;
    _uid = snapshotData['uid'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _objetivo = snapshotData['objetivo'] as String?;
    _pergunta1 = snapshotData['pergunta1'] as String?;
    _pergunta2 = snapshotData['pergunta2'] as String?;
    _pergunta3 = snapshotData['pergunta3'] as String?;
    _pergunta4 = snapshotData['pergunta4'] as String?;
    _pergunta5 = snapshotData['pergunta5'] as String?;
    _pergunta6 = snapshotData['pergunta6'] as String?;
    _pergunta7 = snapshotData['pergunta7'] as String?;
    _pergunta8 = snapshotData['pergunta8'] as String?;
    _pergunta9 = snapshotData['pergunta9'] as String?;
    _pergunta10 = snapshotData['pergunta10'] as String?;
    _avalicaoOnline = snapshotData['avalicaoOnline'] as bool?;
    _avaliacaoPresencial = snapshotData['avaliacaoPresencial'] as bool?;
    _horas = snapshotData['horas'] as String?;
    _minutos = snapshotData['minutos'] as String?;
    _nomeDaAvaliacao = snapshotData['nomeDaAvaliacao'] as String?;
    _data = snapshotData['data'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('avaliacaoOnline')
          : FirebaseFirestore.instance.collectionGroup('avaliacaoOnline');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('avaliacaoOnline').doc(id);

  static Stream<AvaliacaoOnlineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliacaoOnlineRecord.fromSnapshot(s));

  static Future<AvaliacaoOnlineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvaliacaoOnlineRecord.fromSnapshot(s));

  static AvaliacaoOnlineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliacaoOnlineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliacaoOnlineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliacaoOnlineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliacaoOnlineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliacaoOnlineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliacaoOnlineRecordData({
  String? abdominal,
  String? antebracoDireito,
  String? bicipesRelaxado,
  String? cintura,
  String? coxaMedial,
  String? dataAvaliacao,
  double? estatura,
  String? fotoDeCostas,
  String? fotoDeFrente,
  String? fotoDeLado,
  String? peitoral,
  double? peso,
  String? quadril,
  String? uid,
  int? idade,
  String? objetivo,
  String? pergunta1,
  String? pergunta2,
  String? pergunta3,
  String? pergunta4,
  String? pergunta5,
  String? pergunta6,
  String? pergunta7,
  String? pergunta8,
  String? pergunta9,
  String? pergunta10,
  bool? avalicaoOnline,
  bool? avaliacaoPresencial,
  String? horas,
  String? minutos,
  String? nomeDaAvaliacao,
  DateTime? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'abdominal': abdominal,
      'antebracoDireito': antebracoDireito,
      'bicipesRelaxado': bicipesRelaxado,
      'cintura': cintura,
      'coxaMedial': coxaMedial,
      'dataAvaliacao': dataAvaliacao,
      'estatura': estatura,
      'fotoDeCostas': fotoDeCostas,
      'fotoDeFrente': fotoDeFrente,
      'fotoDeLado': fotoDeLado,
      'peitoral': peitoral,
      'peso': peso,
      'quadril': quadril,
      'uid': uid,
      'idade': idade,
      'objetivo': objetivo,
      'pergunta1': pergunta1,
      'pergunta2': pergunta2,
      'pergunta3': pergunta3,
      'pergunta4': pergunta4,
      'pergunta5': pergunta5,
      'pergunta6': pergunta6,
      'pergunta7': pergunta7,
      'pergunta8': pergunta8,
      'pergunta9': pergunta9,
      'pergunta10': pergunta10,
      'avalicaoOnline': avalicaoOnline,
      'avaliacaoPresencial': avaliacaoPresencial,
      'horas': horas,
      'minutos': minutos,
      'nomeDaAvaliacao': nomeDaAvaliacao,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliacaoOnlineRecordDocumentEquality
    implements Equality<AvaliacaoOnlineRecord> {
  const AvaliacaoOnlineRecordDocumentEquality();

  @override
  bool equals(AvaliacaoOnlineRecord? e1, AvaliacaoOnlineRecord? e2) {
    return e1?.abdominal == e2?.abdominal &&
        e1?.antebracoDireito == e2?.antebracoDireito &&
        e1?.bicipesRelaxado == e2?.bicipesRelaxado &&
        e1?.cintura == e2?.cintura &&
        e1?.coxaMedial == e2?.coxaMedial &&
        e1?.dataAvaliacao == e2?.dataAvaliacao &&
        e1?.estatura == e2?.estatura &&
        e1?.fotoDeCostas == e2?.fotoDeCostas &&
        e1?.fotoDeFrente == e2?.fotoDeFrente &&
        e1?.fotoDeLado == e2?.fotoDeLado &&
        e1?.peitoral == e2?.peitoral &&
        e1?.peso == e2?.peso &&
        e1?.quadril == e2?.quadril &&
        e1?.uid == e2?.uid &&
        e1?.idade == e2?.idade &&
        e1?.objetivo == e2?.objetivo &&
        e1?.pergunta1 == e2?.pergunta1 &&
        e1?.pergunta2 == e2?.pergunta2 &&
        e1?.pergunta3 == e2?.pergunta3 &&
        e1?.pergunta4 == e2?.pergunta4 &&
        e1?.pergunta5 == e2?.pergunta5 &&
        e1?.pergunta6 == e2?.pergunta6 &&
        e1?.pergunta7 == e2?.pergunta7 &&
        e1?.pergunta8 == e2?.pergunta8 &&
        e1?.pergunta9 == e2?.pergunta9 &&
        e1?.pergunta10 == e2?.pergunta10 &&
        e1?.avalicaoOnline == e2?.avalicaoOnline &&
        e1?.avaliacaoPresencial == e2?.avaliacaoPresencial &&
        e1?.horas == e2?.horas &&
        e1?.minutos == e2?.minutos &&
        e1?.nomeDaAvaliacao == e2?.nomeDaAvaliacao &&
        e1?.data == e2?.data;
  }

  @override
  int hash(AvaliacaoOnlineRecord? e) => const ListEquality().hash([
        e?.abdominal,
        e?.antebracoDireito,
        e?.bicipesRelaxado,
        e?.cintura,
        e?.coxaMedial,
        e?.dataAvaliacao,
        e?.estatura,
        e?.fotoDeCostas,
        e?.fotoDeFrente,
        e?.fotoDeLado,
        e?.peitoral,
        e?.peso,
        e?.quadril,
        e?.uid,
        e?.idade,
        e?.objetivo,
        e?.pergunta1,
        e?.pergunta2,
        e?.pergunta3,
        e?.pergunta4,
        e?.pergunta5,
        e?.pergunta6,
        e?.pergunta7,
        e?.pergunta8,
        e?.pergunta9,
        e?.pergunta10,
        e?.avalicaoOnline,
        e?.avaliacaoPresencial,
        e?.horas,
        e?.minutos,
        e?.nomeDaAvaliacao,
        e?.data
      ]);

  @override
  bool isValidKey(Object? o) => o is AvaliacaoOnlineRecord;
}
