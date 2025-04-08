import '/autenticacao/componente_editar_perfis/componente_editar_perfis_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'criar_dados_perfil_widget.dart' show CriarDadosPerfilWidget;
import 'package:flutter/material.dart';

class CriarDadosPerfilModel extends FlutterFlowModel<CriarDadosPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ComponenteEditarPerfis component.
  late ComponenteEditarPerfisModel componenteEditarPerfisModel;

  @override
  void initState(BuildContext context) {
    componenteEditarPerfisModel =
        createModel(context, () => ComponenteEditarPerfisModel());
  }

  @override
  void dispose() {
    componenteEditarPerfisModel.dispose();
  }
}
