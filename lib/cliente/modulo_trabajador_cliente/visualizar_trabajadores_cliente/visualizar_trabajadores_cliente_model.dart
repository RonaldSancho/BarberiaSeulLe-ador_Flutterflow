import '/backend/backend.dart';
import '/cliente/modulo_trabajador_cliente/visualizar_detalle_trabajador/visualizar_detalle_trabajador_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'visualizar_trabajadores_cliente_widget.dart'
    show VisualizarTrabajadoresClienteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisualizarTrabajadoresClienteModel
    extends FlutterFlowModel<VisualizarTrabajadoresClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
