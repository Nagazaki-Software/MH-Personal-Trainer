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

Future replicarSeriesTreino(
  DocumentReference seriesRep,
  List<String> treinos,
  String treino,
) async {
  for (int i = 0; i < treinos.length; i++) {
    // Verifica se o treino na lista é diferente do treino fornecido
    if (treinos[i] != treino) {
      // Replicando a série para cada item que não seja o treino atual
      await seriesRep.update(
        {
          'treino': treinos[i], // Chave 'treino_$i' com o valor do treino
        },
      );
    }
  }
}
