import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meu_progresso_v_aluno_widget.dart' show MeuProgressoVAlunoWidget;
import 'package:flutter/material.dart';

class MeuProgressoVAlunoModel
    extends FlutterFlowModel<MeuProgressoVAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in meuProgressoVAluno widget.
  List<AvaliacoesFisicasRecord>? queryAvFisica;
  // Stores action output result for [Firestore Query - Query a collection] action in meuProgressoVAluno widget.
  List<CreateTreinosRecord>? createTreinos;
  // Stores action output result for [Firestore Query - Query a collection] action in meuProgressoVAluno widget.
  List<SeriesRepeticoesRecord>? seriesREP;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for Slider widget.
  double? sliderValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
