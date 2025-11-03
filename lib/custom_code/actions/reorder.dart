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

Future<List<String>?> reorder(
  List<String> task,
  int oldIndex,
  int newIndex,
) async {
  // if oldIndex < newIndex, then newIndex -= 1, move item at oldIndex into newIndex
  if (oldIndex < newIndex) {
    newIndex -= 1;
  }

  String item = task.removeAt(oldIndex);
  task.insert(newIndex, item);

  return task;
}
