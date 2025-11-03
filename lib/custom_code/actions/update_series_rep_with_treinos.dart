// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> updateSeriesRepWithTreinos(
  List<SeriesRepeticoesRecord> seriesList,
  List<String> treinosMarcados,
  String uidCreateTreinos,
  String uidUser,
  DocumentReference seriesRepDoc, // 🔹 Novo parâmetro
) async {
  if (treinosMarcados.isEmpty ||
      uidCreateTreinos.isEmpty ||
      uidUser.isEmpty ||
      seriesRepDoc == null) {
    return;
  }

  final docSnap = await seriesRepDoc.get();

  if (!docSnap.exists) return;

  final data = docSnap.data() as Map<String, dynamic>;

  final List<dynamic> treinosExistentesRaw = data['treinos'] ?? [];
  final List<String> treinosExistentes =
      treinosExistentesRaw.map((e) => e.toString()).toList();

  final List<String> treinosFinais = [
    ...{...treinosExistentes, ...treinosMarcados}
  ];

  await FirebaseFirestore.instance
      .collection('users')
      .doc(uidUser)
      .collection('seriesRepeticoes')
      .add({
    'uidTreinos': uidCreateTreinos,
    'uid': uidUser,
    'treinos': treinosFinais,
    'seriesRep': data['seriesRep'] ?? '',
    'carga': data['carga'] ?? '',
    'intervalo': data['intervalo'] ?? '',
    'velocidade': data['velocidade'] ?? '',
    'pace': data['pace'] ?? '',
    'distancia': data['distancia'] ?? '',
    'tempo': data['tempo'] ?? '',
    'inclinacao': data['inclinacao'] ?? '',
    'cadencia': data['cadencia'] ?? '',
    'obs': data['obs'] ?? '',
    'createdAt': FieldValue.serverTimestamp(),
  });
}
