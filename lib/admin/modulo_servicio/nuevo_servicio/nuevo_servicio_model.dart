import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'nuevo_servicio_widget.dart' show NuevoServicioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevoServicioModel extends FlutterFlowModel<NuevoServicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombreServicio widget.
  FocusNode? txtNombreServicioFocusNode;
  TextEditingController? txtNombreServicioController;
  String? Function(BuildContext, String?)? txtNombreServicioControllerValidator;
  // State field(s) for txtDetalleServicio widget.
  FocusNode? txtDetalleServicioFocusNode;
  TextEditingController? txtDetalleServicioController;
  String? Function(BuildContext, String?)?
      txtDetalleServicioControllerValidator;
  // State field(s) for txtPrecioServicio widget.
  FocusNode? txtPrecioServicioFocusNode;
  TextEditingController? txtPrecioServicioController;
  String? Function(BuildContext, String?)? txtPrecioServicioControllerValidator;
  // State field(s) for dpdTrabajadorServicio widget.
  String? dpdTrabajadorServicioValue;
  FormFieldController<String>? dpdTrabajadorServicioValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
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
