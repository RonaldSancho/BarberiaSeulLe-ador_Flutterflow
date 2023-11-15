import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'editar_servicio_widget.dart' show EditarServicioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarServicioModel extends FlutterFlowModel<EditarServicioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNombreServicio widget.
  FocusNode? txtNombreServicioFocusNode;
  TextEditingController? txtNombreServicioController;
  String? Function(BuildContext, String?)? txtNombreServicioControllerValidator;
  String? _txtNombreServicioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 5) {
      return 'El nombre debe tener más de 5 caracteres.';
    }

    return null;
  }

  // State field(s) for txtDetalleServicio widget.
  FocusNode? txtDetalleServicioFocusNode;
  TextEditingController? txtDetalleServicioController;
  String? Function(BuildContext, String?)?
      txtDetalleServicioControllerValidator;
  String? _txtDetalleServicioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 10) {
      return 'La descripción debe tener más de 10 caracteres.';
    }

    return null;
  }

  // State field(s) for txtPrecioServicio widget.
  FocusNode? txtPrecioServicioFocusNode;
  TextEditingController? txtPrecioServicioController;
  String? Function(BuildContext, String?)? txtPrecioServicioControllerValidator;
  String? _txtPrecioServicioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length > 6) {
      return 'El precio no debe tener más de 6 dígitos.';
    }

    return null;
  }

  // State field(s) for dpTrabajadorServicio widget.
  String? dpTrabajadorServicioValue;
  FormFieldController<String>? dpTrabajadorServicioValueController;
  // State field(s) for dpEstadoServicio widget.
  String? dpEstadoServicioValue;
  FormFieldController<String>? dpEstadoServicioValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreServicioControllerValidator =
        _txtNombreServicioControllerValidator;
    txtDetalleServicioControllerValidator =
        _txtDetalleServicioControllerValidator;
    txtPrecioServicioControllerValidator =
        _txtPrecioServicioControllerValidator;
  }

  void dispose() {
    txtNombreServicioFocusNode?.dispose();
    txtNombreServicioController?.dispose();

    txtDetalleServicioFocusNode?.dispose();
    txtDetalleServicioController?.dispose();

    txtPrecioServicioFocusNode?.dispose();
    txtPrecioServicioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
