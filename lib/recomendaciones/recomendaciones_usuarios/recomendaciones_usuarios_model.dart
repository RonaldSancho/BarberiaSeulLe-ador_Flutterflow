import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recomendaciones_usuarios_widget.dart'
    show RecomendacionesUsuariosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecomendacionesUsuariosModel
    extends FlutterFlowModel<RecomendacionesUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtComentario widget.
  FocusNode? txtComentarioFocusNode;
  TextEditingController? txtComentarioController;
  String? Function(BuildContext, String?)? txtComentarioControllerValidator;
  String? _txtComentarioControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El comentario es requerido.';
    }

    if (val.length < 15) {
      return 'Mínimo 15 caracteres';
    }
    if (val.length > 250) {
      return 'Máximo 250 caracteres';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtComentarioControllerValidator = _txtComentarioControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtComentarioFocusNode?.dispose();
    txtComentarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
