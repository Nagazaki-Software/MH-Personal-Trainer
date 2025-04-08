import '/backend/backend.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gerenciar_alunos_novo_widget.dart' show GerenciarAlunosNovoWidget;
import 'package:flutter/material.dart';

class GerenciarAlunosNovoModel
    extends FlutterFlowModel<GerenciarAlunosNovoWidget> {
  ///  Local state fields for this page.

  String tipoDeAssinatura = 'Todos';

  bool filtros = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in gerenciarAlunosNovo widget.
  PersonalAccountRecord? queryPersonal;
  // Stores action output result for [Firestore Query - Query a collection] action in gerenciarAlunosNovo widget.
  List<UsersRecord>? queryUsers;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<UsersRecord> simpleSearchResults1 = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<UsersRecord> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    headerwebModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
