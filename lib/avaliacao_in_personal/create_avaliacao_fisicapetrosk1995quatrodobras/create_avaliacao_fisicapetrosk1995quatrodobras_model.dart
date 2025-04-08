import '/backend/backend.dart';
import '/components/date_picker_formulas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_avaliacao_fisicapetrosk1995quatrodobras_widget.dart'
    show CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateAvaliacaoFisicapetrosk1995quatrodobrasModel
    extends FlutterFlowModel<
        CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget> {
  ///  Local state fields for this page.

  bool isUploader = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  final fullNameMask1 = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  final fullNameMask2 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  String? _fullNameTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wocgcwrv' /* Please enter the patients full... */,
      );
    }

    return null;
  }

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode3;
  TextEditingController? fullNameTextController3;
  final fullNameMask3 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController3Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode4;
  TextEditingController? fullNameTextController4;
  final fullNameMask4 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController4Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode5;
  TextEditingController? fullNameTextController5;
  final fullNameMask5 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController5Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode6;
  TextEditingController? fullNameTextController6;
  final fullNameMask6 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController6Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode7;
  TextEditingController? fullNameTextController7;
  final fullNameMask7 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController7Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode8;
  TextEditingController? fullNameTextController8;
  final fullNameMask8 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController8Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode9;
  TextEditingController? fullNameTextController9;
  final fullNameMask9 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController9Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode10;
  TextEditingController? fullNameTextController10;
  final fullNameMask10 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController10Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode11;
  TextEditingController? fullNameTextController11;
  final fullNameMask11 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController11Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode12;
  TextEditingController? fullNameTextController12;
  final fullNameMask12 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController12Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode13;
  TextEditingController? fullNameTextController13;
  final fullNameMask13 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController13Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode14;
  TextEditingController? fullNameTextController14;
  final fullNameMask14 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController14Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode15;
  TextEditingController? fullNameTextController15;
  final fullNameMask15 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController15Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode16;
  TextEditingController? fullNameTextController16;
  final fullNameMask16 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController16Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode17;
  TextEditingController? fullNameTextController17;
  final fullNameMask17 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController17Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode18;
  TextEditingController? fullNameTextController18;
  final fullNameMask18 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController18Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode19;
  TextEditingController? fullNameTextController19;
  final fullNameMask19 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController19Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode20;
  TextEditingController? fullNameTextController20;
  final fullNameMask20 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController20Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode21;
  TextEditingController? fullNameTextController21;
  final fullNameMask21 = MaskTextInputFormatter(mask: '##.#');
  String? Function(BuildContext, String?)? fullNameTextController21Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode22;
  TextEditingController? fullNameTextController22;
  String? Function(BuildContext, String?)? fullNameTextController22Validator;
  // Model for datePickerFormulas component.
  late DatePickerFormulasModel datePickerFormulasModel;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1k8xd16p' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AvaliacoesFisicasRecord? avalicaofisica;

  @override
  void initState(BuildContext context) {
    fullNameTextController2Validator = _fullNameTextController2Validator;
    datePickerFormulasModel =
        createModel(context, () => DatePickerFormulasModel());
    ageTextControllerValidator = _ageTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    fullNameFocusNode3?.dispose();
    fullNameTextController3?.dispose();

    fullNameFocusNode4?.dispose();
    fullNameTextController4?.dispose();

    fullNameFocusNode5?.dispose();
    fullNameTextController5?.dispose();

    fullNameFocusNode6?.dispose();
    fullNameTextController6?.dispose();

    fullNameFocusNode7?.dispose();
    fullNameTextController7?.dispose();

    fullNameFocusNode8?.dispose();
    fullNameTextController8?.dispose();

    fullNameFocusNode9?.dispose();
    fullNameTextController9?.dispose();

    fullNameFocusNode10?.dispose();
    fullNameTextController10?.dispose();

    fullNameFocusNode11?.dispose();
    fullNameTextController11?.dispose();

    fullNameFocusNode12?.dispose();
    fullNameTextController12?.dispose();

    fullNameFocusNode13?.dispose();
    fullNameTextController13?.dispose();

    fullNameFocusNode14?.dispose();
    fullNameTextController14?.dispose();

    fullNameFocusNode15?.dispose();
    fullNameTextController15?.dispose();

    fullNameFocusNode16?.dispose();
    fullNameTextController16?.dispose();

    fullNameFocusNode17?.dispose();
    fullNameTextController17?.dispose();

    fullNameFocusNode18?.dispose();
    fullNameTextController18?.dispose();

    fullNameFocusNode19?.dispose();
    fullNameTextController19?.dispose();

    fullNameFocusNode20?.dispose();
    fullNameTextController20?.dispose();

    fullNameFocusNode21?.dispose();
    fullNameTextController21?.dispose();

    fullNameFocusNode22?.dispose();
    fullNameTextController22?.dispose();

    datePickerFormulasModel.dispose();
    ageFocusNode?.dispose();
    ageTextController?.dispose();
  }
}
