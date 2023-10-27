import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'nuevo_trabajador_widget.dart' show NuevoTrabajadorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevoTrabajadorModel extends FlutterFlowModel<NuevoTrabajadorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombreTrabajador widget.
  FocusNode? txtNombreTrabajadorFocusNode;
  TextEditingController? txtNombreTrabajadorController;
  String? Function(BuildContext, String?)?
      txtNombreTrabajadorControllerValidator;
  // State field(s) for txtApellidosTrabajador widget.
  FocusNode? txtApellidosTrabajadorFocusNode;
  TextEditingController? txtApellidosTrabajadorController;
  String? Function(BuildContext, String?)?
      txtApellidosTrabajadorControllerValidator;
  // State field(s) for txtCorreoElectronico widget.
  FocusNode? txtCorreoElectronicoFocusNode;
  TextEditingController? txtCorreoElectronicoController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for ddTipoUsuario widget.
  String? ddTipoUsuarioValue;
  FormFieldController<String>? ddTipoUsuarioValueController;
  // State field(s) for txtDescripcionTrabajador widget.
  FocusNode? txtDescripcionTrabajadorFocusNode;
  TextEditingController? txtDescripcionTrabajadorController;
  String? Function(BuildContext, String?)?
      txtDescripcionTrabajadorControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
