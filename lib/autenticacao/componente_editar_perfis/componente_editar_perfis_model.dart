import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'componente_editar_perfis_widget.dart' show ComponenteEditarPerfisWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ComponenteEditarPerfisModel
    extends FlutterFlowModel<ComponenteEditarPerfisWidget> {
  ///  Local state fields for this component.

  bool isSetImageUpload = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  final yourNameMask3 = MaskTextInputFormatter(mask: '## # ####-####');
  String? Function(BuildContext, String?)? yourNameTextController3Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameTextController4;
  final yourNameMask4 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? yourNameTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameTextController4?.dispose();
  }
}
