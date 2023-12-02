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

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  String? _txtNombreUsuarioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre completo es requerido.';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'El nombre completo es requerido.';
    }
    return null;
  }

  // State field(s) for txtCorreoElectronicoNuevo widget.
  FocusNode? txtCorreoElectronicoNuevoFocusNode;
  TextEditingController? txtCorreoElectronicoNuevoController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoNuevoControllerValidator;
  String? _txtCorreoElectronicoNuevoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo electrónico es requerido.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'El correo electrónico es inválido.';
    }
    return null;
  }

  // State field(s) for txtNumeroTelefonico widget.
  FocusNode? txtNumeroTelefonicoFocusNode;
  TextEditingController? txtNumeroTelefonicoController;
  String? Function(BuildContext, String?)?
      txtNumeroTelefonicoControllerValidator;
  String? _txtNumeroTelefonicoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El número telefónico es requerido.';
    }

    if (val.length < 8) {
      return 'El número telefónico debe tener 8 dígitos.';
    }
    if (val.length > 8) {
      return 'El número telefónico no debe tener más de 8 dígitos.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreUsuarioControllerValidator = _txtNombreUsuarioControllerValidator;
    txtCorreoElectronicoNuevoControllerValidator =
        _txtCorreoElectronicoNuevoControllerValidator;
    txtNumeroTelefonicoControllerValidator =
        _txtNumeroTelefonicoControllerValidator;
  }

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
