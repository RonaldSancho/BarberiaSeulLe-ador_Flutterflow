import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
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
