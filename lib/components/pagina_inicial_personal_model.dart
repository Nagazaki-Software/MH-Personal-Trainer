import '/components/baxei_o_appp_widget.dart';
import '/components/codigodeafiliacao_widget.dart';
import '/components/upgrade_to_premium_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_inicial_personal_widget.dart' show PaginaInicialPersonalWidget;
import 'package:flutter/material.dart';

class PaginaInicialPersonalModel
    extends FlutterFlowModel<PaginaInicialPersonalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for baxeiOAppp component.
  late BaxeiOApppModel baxeiOApppModel;
  // Model for codigodeafiliacao component.
  late CodigodeafiliacaoModel codigodeafiliacaoModel;
  // Model for upgradeToPremium component.
  late UpgradeToPremiumModel upgradeToPremiumModel;

  @override
  void initState(BuildContext context) {
    baxeiOApppModel = createModel(context, () => BaxeiOApppModel());
    codigodeafiliacaoModel =
        createModel(context, () => CodigodeafiliacaoModel());
    upgradeToPremiumModel = createModel(context, () => UpgradeToPremiumModel());
  }

  @override
  void dispose() {
    baxeiOApppModel.dispose();
    codigodeafiliacaoModel.dispose();
    upgradeToPremiumModel.dispose();
  }
}
