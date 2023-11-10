import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'nuevo_usuario_widget.dart' show NuevoUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevoUsuarioModel extends FlutterFlowModel<NuevoUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  // State field(s) for txtApellidosUsuario widget.
  FocusNode? txtApellidosUsuarioFocusNode;
  TextEditingController? txtApellidosUsuarioController;
  String? Function(BuildContext, String?)?
      txtApellidosUsuarioControllerValidator;
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
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtContrasennaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtNombreUsuarioFocusNode?.dispose();
    txtNombreUsuarioController?.dispose();

    txtApellidosUsuarioFocusNode?.dispose();
    txtApellidosUsuarioController?.dispose();

    txtCorreoElectronicoFocusNode?.dispose();
    txtCorreoElectronicoController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
