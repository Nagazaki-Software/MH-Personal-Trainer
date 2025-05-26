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

Future<void> updateSeriesRepWithTreinos(
  List<SeriesRepeticoesRecord> seriesList,
  List<String> treinos,
  String uidCreateTreinos,
) async {
  if (seriesList.isEmpty || treinos.isEmpty || uidCreateTreinos.isEmpty) return;

  for (final series in seriesList) {
    // Verifica se este record deve ser atualizado
    if (series.uidTreinos == uidCreateTreinos) {
      await series.reference.update({
        'treinos': treinos,
      });
    }
  }
}
