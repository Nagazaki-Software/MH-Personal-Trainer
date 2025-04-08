import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dashboardadmin_model.dart';
export 'dashboardadmin_model.dart';

class DashboardadminWidget extends StatefulWidget {
  const DashboardadminWidget({super.key});

  @override
  State<DashboardadminWidget> createState() => _DashboardadminWidgetState();
}

class _DashboardadminWidgetState extends State<DashboardadminWidget> {
  late DashboardadminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardadminModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
