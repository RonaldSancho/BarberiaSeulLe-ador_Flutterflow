import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nueva_reserva_widget.dart' show NuevaReservaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevaReservaModel extends FlutterFlowModel<NuevaReservaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for dropdownServicio widget.
  String? dropdownServicioValue;
  FormFieldController<String>? dropdownServicioValueController;
  // State field(s) for txtCliente widget.
  FocusNode? txtClienteFocusNode;
  TextEditingController? txtClienteController;
  String? Function(BuildContext, String?)? txtClienteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
    txtClienteFocusNode?.dispose();
    txtClienteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
