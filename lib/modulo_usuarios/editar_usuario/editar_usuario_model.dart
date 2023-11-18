import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  // State field(s) for txtCorreoElectronicoNuevo widget.
  FocusNode? txtCorreoElectronicoNuevoFocusNode;
  TextEditingController? txtCorreoElectronicoNuevoController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoNuevoControllerValidator;
  // State field(s) for txtNumeroTelefonico widget.
  FocusNode? txtNumeroTelefonicoFocusNode;
  TextEditingController? txtNumeroTelefonicoController;
  String? Function(BuildContext, String?)?
      txtNumeroTelefonicoControllerValidator;
  // State field(s) for ddTipoUsuario widget.
  String? ddTipoUsuarioValue;
  FormFieldController<String>? ddTipoUsuarioValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreUsuarioFocusNode?.dispose();
    txtNombreUsuarioController?.dispose();

    txtCorreoElectronicoNuevoFocusNode?.dispose();
    txtCorreoElectronicoNuevoController?.dispose();

    txtNumeroTelefonicoFocusNode?.dispose();
    txtNumeroTelefonicoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
