import '/backend/backend.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'painel_administrativo_do_personal_widget.dart'
    show PainelAdministrativoDoPersonalWidget;
import 'package:flutter/material.dart';

class PainelAdministrativoDoPersonalModel
    extends FlutterFlowModel<PainelAdministrativoDoPersonalWidget> {
  ///  Local state fields for this page.

  List<String> isDragTrue = [];
  void addToIsDragTrue(String item) => isDragTrue.add(item);
  void removeFromIsDragTrue(String item) => isDragTrue.remove(item);
  void removeAtIndexFromIsDragTrue(int index) => isDragTrue.removeAt(index);
  void insertAtIndexInIsDragTrue(int index, String item) =>
      isDragTrue.insert(index, item);
  void updateIsDragTrueAtIndex(int index, Function(String) updateFn) =>
      isDragTrue[index] = updateFn(isDragTrue[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generateDocument] action in Row widget.
  String? outputDocumentCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<SeriesRepeticoesRecord>? querySeriesList;
  // Stores action output result for [Custom Action - generateAndUploadPdf] action in Button widget.
  String? customPdf;
  // Stores action output result for [Custom Action - reorder] action in ListView widget.
  List<String>? newlist;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // Stores action output result for [Custom Action - generateDocument] action in Row widget.
  String? outputDocumentCopy3;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<SeriesRepeticoesRecord>? querySeriesListCopys;
  // Stores action output result for [Custom Action - generateAndUploadPdf] action in Button widget.
  String? customPdfCopy;
  // Stores action output result for [Custom Action - reorder] action in ListView widget.
  List<String>? newlists;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    headerwebModel.dispose();
  }
}
