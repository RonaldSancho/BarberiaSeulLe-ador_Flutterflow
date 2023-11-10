import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
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
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  String? _txtNombreUsuarioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre es requerido.';
    }

    return null;
  }

  // State field(s) for txtApellidosUsuario widget.
  FocusNode? txtApellidosUsuarioFocusNode;
  TextEditingController? txtApellidosUsuarioController;
  String? Function(BuildContext, String?)?
      txtApellidosUsuarioControllerValidator;
  String? _txtApellidosUsuarioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Al menos un apellido es requerido.';
    }

    return null;
  }

  // State field(s) for txtCorreoElectronico widget.
  FocusNode? txtCorreoElectronicoFocusNode;
  TextEditingController? txtCorreoElectronicoController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoControllerValidator;
  String? _txtCorreoElectronicoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo electrónico es requerido.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'El correo electrónico es inválido.';
    }
    return null;
  }

  // State field(s) for txtContrasenna widget.
  FocusNode? txtContrasennaFocusNode;
  TextEditingController? txtContrasennaController;
  late bool txtContrasennaVisibility;
  String? Function(BuildContext, String?)? txtContrasennaControllerValidator;
  String? _txtContrasennaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña es requerida.';
    }

    if (val.length < 6) {
      return 'La contraseña debe tener más de 6 caracteres.';
    }

    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  String? _txtTelefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El número de teléfono es requerido.';
    }

    if (val.length > 8) {
      return 'El número de teléfono no debe tener más de 8 dígitos.';
    }

    return null;
  }

  // State field(s) for ddTipoUsuario widget.
  String? ddTipoUsuarioValue;
  FormFieldController<String>? ddTipoUsuarioValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreUsuarioControllerValidator = _txtNombreUsuarioControllerValidator;
    txtApellidosUsuarioControllerValidator =
        _txtApellidosUsuarioControllerValidator;
    txtCorreoElectronicoControllerValidator =
        _txtCorreoElectronicoControllerValidator;
    txtContrasennaVisibility = false;
    txtContrasennaControllerValidator = _txtContrasennaControllerValidator;
    txtTelefonoControllerValidator = _txtTelefonoControllerValidator;
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
