import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visualizar_detalle_servicio_model.dart';
export 'visualizar_detalle_servicio_model.dart';

class VisualizarDetalleServicioWidget extends StatefulWidget {
  const VisualizarDetalleServicioWidget({
    Key? key,
    required this.informacionServicio,
  }) : super(key: key);

  final ServiciosRecord? informacionServicio;

  @override
  _VisualizarDetalleServicioWidgetState createState() =>
      _VisualizarDetalleServicioWidgetState();
}

class _VisualizarDetalleServicioWidgetState
    extends State<VisualizarDetalleServicioWidget> {
  late VisualizarDetalleServicioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisualizarDetalleServicioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 300.0,
          height: 350.0,
          decoration: BoxDecoration(
            color: Color(0xE4F1F4F8),
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Color(0xA2000000),
              width: 2.0,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget.informacionServicio!.imagenServicio,
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.00, -1.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 0.0, 10.0, 160.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_sharp,
                          color: FlutterFlowTheme.of(context).error,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                valueOrDefault<String>(
                  widget.informacionServicio?.nombreServicio,
                  'Error de conexión',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                valueOrDefault<String>(
                  widget.informacionServicio?.descripcionServicion,
                  'Error de conexión',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                valueOrDefault<String>(
                  widget.informacionServicio?.precioServicio?.toString(),
                  'Error de conexión',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
