import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'qual_replicar_model.dart';
export 'qual_replicar_model.dart';

class QualReplicarWidget extends StatefulWidget {
  const QualReplicarWidget({
    super.key,
    required this.listTreinos,
    required this.users,
    required this.createTreinos,
    required this.treino,
    required this.seriesRep,
  });

  final List<String>? listTreinos;
  final DocumentReference? users;
  final DocumentReference? createTreinos;
  final String? treino;
  final DocumentReference? seriesRep;

  @override
  State<QualReplicarWidget> createState() => _QualReplicarWidgetState();
}

class _QualReplicarWidgetState extends State<QualReplicarWidget> {
  late QualReplicarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QualReplicarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    width: 100.0,
                    height: 2.0,
                    decoration: BoxDecoration(
                      color: Color(0x7A95A1AC),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'jbo43fnt' /* Replicar séries */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 8.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'kpcri4ci' /* Replique as séries nos treinos... */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Builder(
                builder: (context) {
                  final tre = widget.listTreinos!.map((e) => e).toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: tre.length,
                    itemBuilder: (context, treIndex) {
                      final treItem = tre[treIndex];
                      return StreamBuilder<SeriesRepeticoesRecord>(
                        stream: SeriesRepeticoesRecord.getDocument(
                            widget.seriesRep!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitSquareCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }

                          final checkboxListTileSeriesRepeticoesRecord =
                              snapshot.data!;

                          return Material(
                            color: Colors.transparent,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                              child: CheckboxListTile(
                                value:
                                    _model.checkboxListTileValueMap[treItem] ??=
                                        checkboxListTileSeriesRepeticoesRecord
                                            .treinos
                                            .contains(widget.treino),
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.checkboxListTileValueMap[treItem] =
                                          newValue!);
                                },
                                title: Text(
                                  treItem,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('QUAL_REPLICAR_COMP_SALVAR_BTN_ON_TAP');

                    await widget.seriesRep!.update({
                      ...mapToFirestore(
                        {
                          'treinos': _model.checkboxListTileCheckedItems,
                        },
                      ),
                    });

                    context.pushNamed(
                      PainelAdministrativoDoPersonalWidget.routeName,
                      queryParameters: {
                        'cliente': serializeParam(
                          widget.users,
                          ParamType.DocumentReference,
                        ),
                        'createTreinos': serializeParam(
                          widget.createTreinos,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'd9psxd1q' /* Salvar */,
                  ),
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
