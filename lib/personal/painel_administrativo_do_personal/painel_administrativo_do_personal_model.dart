import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/structs/index.dart';
import '/components/edit_series_rep_widget.dart';
import '/components/headerweb_widget.dart';
import '/components/profile_personal_copy_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/personal/card_acoes_copy2/card_acoes_copy2_widget.dart';
import '/personal/card_acoes_copy2_copy/card_acoes_copy2_copy_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'painel_administrativo_do_personal_widget.dart'
    show PainelAdministrativoDoPersonalWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  bool editSeriesRep = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generateDocument] action in Row widget.
  String? outputDocumentCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<SeriesRepeticoesRecord>? querySeriesList;
  // Stores action output result for [Custom Action - generateAndUploadPdf] action in Button widget.
  String? customPdf;
  // Stores action output result for [Custom Action - reorder] action in ListView widget.
  List<String>? newlist;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  SeriesRepeticoesRecord? querySeriesRep;
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
  List<String>? newlistWeb;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  SeriesRepeticoesRecord? querySeriesReps;
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
