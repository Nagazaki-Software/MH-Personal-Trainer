import '/backend/backend.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'evolucaodecargas_widget.dart' show EvolucaodecargasWidget;
import 'package:flutter/material.dart';

class EvolucaodecargasModel extends FlutterFlowModel<EvolucaodecargasWidget> {
  ///  Local state fields for this page.

  String? isNull;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in evolucaodecargas widget.
  List<SeriesRepeticoesRecord>? querySeriesRep;
  // Stores action output result for [Firestore Query - Query a collection] action in evolucaodecargas widget.
  SeriesRepeticoesRecord? querySeriesRepSinle;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for Slider widget.
  double? sliderValue3;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // State field(s) for Slider widget.
  double? sliderValue4;
  // State field(s) for Slider widget.
  double? sliderValue5;
  // State field(s) for Slider widget.
  double? sliderValue6;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    headerwebModel.dispose();
  }
}
