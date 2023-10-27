import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registrode_usuario_widget.dart' show RegistrodeUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrodeUsuarioModel extends FlutterFlowModel<RegistrodeUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  // State field(s) for txtApeliidos widget.
  FocusNode? txtApeliidosFocusNode;
  TextEditingController? txtApeliidosController;
  String? Function(BuildContext, String?)? txtApeliidosControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for txtCorreoElectronico widget.
  FocusNode? txtCorreoElectronicoFocusNode;
  TextEditingController? txtCorreoElectronicoController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoControllerValidator;
  // State field(s) for txtContrasenna widget.
  FocusNode? txtContrasennaFocusNode;
  TextEditingController? txtContrasennaController;
  late bool txtContrasennaVisibility;
  String? Function(BuildContext, String?)? txtContrasennaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtContrasennaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtNombreUsuarioFocusNode?.dispose();
    txtNombreUsuarioController?.dispose();

    txtApeliidosFocusNode?.dispose();
    txtApeliidosController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();

    txtCorreoElectronicoFocusNode?.dispose();
    txtCorreoElectronicoController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}