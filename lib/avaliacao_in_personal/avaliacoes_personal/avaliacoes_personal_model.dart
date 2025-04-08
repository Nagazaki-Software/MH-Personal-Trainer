import '/components/avaliacoes_parte_personal_widget.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'avaliacoes_personal_widget.dart' show AvaliacoesPersonalWidget;
import 'package:flutter/material.dart';

class AvaliacoesPersonalModel
    extends FlutterFlowModel<AvaliacoesPersonalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for avaliacoesPartePersonal component.
  late AvaliacoesPartePersonalModel avaliacoesPartePersonalModel1;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // Model for avaliacoesPartePersonal component.
  late AvaliacoesPartePersonalModel avaliacoesPartePersonalModel2;

  @override
  void initState(BuildContext context) {
    avaliacoesPartePersonalModel1 =
        createModel(context, () => AvaliacoesPartePersonalModel());
    headerwebModel = createModel(context, () => HeaderwebModel());
    avaliacoesPartePersonalModel2 =
        createModel(context, () => AvaliacoesPartePersonalModel());
  }

  @override
  void dispose() {
    avaliacoesPartePersonalModel1.dispose();
    headerwebModel.dispose();
    avaliacoesPartePersonalModel2.dispose();
  }
}
