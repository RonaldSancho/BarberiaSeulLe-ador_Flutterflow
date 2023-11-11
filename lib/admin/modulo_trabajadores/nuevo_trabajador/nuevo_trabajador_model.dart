import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'nuevo_trabajador_widget.dart' show NuevoTrabajadorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevoTrabajadorModel extends FlutterFlowModel<NuevoTrabajadorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombreTrabajador widget.
  FocusNode? txtNombreTrabajadorFocusNode;
  TextEditingController? txtNombreTrabajadorController;
  String? Function(BuildContext, String?)?
      txtNombreTrabajadorControllerValidator;
  String? _txtNombreTrabajadorControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre del trabajador requerido';
    }

    return null;
  }

  // State field(s) for txtApellidosTrabajador widget.
  FocusNode? txtApellidosTrabajadorFocusNode;
  TextEditingController? txtApellidosTrabajadorController;
  String? Function(BuildContext, String?)?
      txtApellidosTrabajadorControllerValidator;
  String? _txtApellidosTrabajadorControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Apellidos del trabajador requeridos';
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
      return 'Correo requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Favor ingresar un correo valido';
    }
    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  String? _txtTelefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Teléfono requerido';
    }

    return null;
  }

  // State field(s) for ddTipoUsuario widget.
  String? ddTipoUsuarioValue;
  FormFieldController<String>? ddTipoUsuarioValueController;
  // State field(s) for txtDescripcionTrabajador widget.
  FocusNode? txtDescripcionTrabajadorFocusNode;
  TextEditingController? txtDescripcionTrabajadorController;
  String? Function(BuildContext, String?)?
      txtDescripcionTrabajadorControllerValidator;
  String? _txtDescripcionTrabajadorControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descripción del trabajador requerida';
    }

    if (val.length < 20) {
      return 'Mínimo 15 caracteres';
    }
    if (val.length > 200) {
      return 'Máximo 200 caracteres';
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
      return 'Contraseña requerida';
    }

    if (val.length < 9) {
      return 'Mínimo 9 dígitos alfanúmericos';
    }
    if (val.length > 12) {
      return 'Máximo12 dígitos alfanúmericos';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreTrabajadorControllerValidator =
        _txtNombreTrabajadorControllerValidator;
    txtApellidosTrabajadorControllerValidator =
        _txtApellidosTrabajadorControllerValidator;
    txtCorreoElectronicoControllerValidator =
        _txtCorreoElectronicoControllerValidator;
    txtTelefonoControllerValidator = _txtTelefonoControllerValidator;
    txtDescripcionTrabajadorControllerValidator =
        _txtDescripcionTrabajadorControllerValidator;
    txtContrasennaVisibility = false;
    txtContrasennaControllerValidator = _txtContrasennaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtNombreTrabajadorFocusNode?.dispose();
    txtNombreTrabajadorController?.dispose();

    txtApellidosTrabajadorFocusNode?.dispose();
    txtApellidosTrabajadorController?.dispose();

    txtCorreoElectronicoFocusNode?.dispose();
    txtCorreoElectronicoController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();

    txtDescripcionTrabajadorFocusNode?.dispose();
    txtDescripcionTrabajadorController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
