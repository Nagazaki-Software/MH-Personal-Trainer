import '/backend/backend.dart';
import '/components/feitopelomh_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'iniciar_treino_novo_widget.dart' show IniciarTreinoNovoWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class IniciarTreinoNovoModel extends FlutterFlowModel<IniciarTreinoNovoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in iniciarTreinoNovo widget.
  CreateTreinosRecord? treinoslist;
  // Stores action output result for [Gemini - Generate Text] action in iniciarTreinoNovo widget.
  String? instrucao;
  // Stores action output result for [Gemini - Generate Text] action in iniciarTreinoNovo widget.
  String? niveldedificuldade;
  // Stores action output result for [Gemini - Generate Text] action in iniciarTreinoNovo widget.
  String? tempomedio;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // Model for feitopelomh component.
  late FeitopelomhModel feitopelomhModel;

  @override
  void initState(BuildContext context) {
    feitopelomhModel = createModel(context, () => FeitopelomhModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    feitopelomhModel.dispose();
  }
}
