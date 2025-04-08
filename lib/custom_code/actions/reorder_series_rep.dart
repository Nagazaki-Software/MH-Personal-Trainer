// Automatic FlutterFlow imports
import '/backend/backend.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import '/backend/schema/structs/index.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> reorderSeriesRep(
  List<String> task,
  int oldIndex,
  int newIndex,
) async {
  // Ajustar newIndex se oldIndex for menor que newIndex para evitar erro de índice
  if (oldIndex < newIndex) {
    newIndex -= 1;
  }

  // Remover o item de seriesRep da posição oldIndex
  final movedRecord = task[oldIndex];
  task.removeAt(oldIndex);

  // Inserir o item movido na nova posição dentro de seriesRep
  task.insert(newIndex, movedRecord);

  // Não é necessário retornar nada, pois estamos apenas alterando seriesRep
}
