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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> reorderSeriesRep(
  List<SeriesRepeticoesRecord> seriesReps,
  int oldIndex,
  int newIndex,
) async {
  if (oldIndex < newIndex) {
    newIndex--;
  }

  final item = seriesReps.removeAt(oldIndex);
  seriesReps.insert(newIndex, item);

  final batch = FirebaseFirestore.instance.batch();

  for (int i = 0; i < seriesReps.length; i++) {
    final docRef = seriesReps[i].reference;
    batch.update(docRef, {'ordem': i});
  }

  await batch.commit();
  print("Ordem atualizada com sucesso!");
}
