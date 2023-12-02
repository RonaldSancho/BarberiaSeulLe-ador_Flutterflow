import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editar_usuario_model.dart';
export 'editar_usuario_model.dart';

class EditarUsuarioWidget extends StatefulWidget {
  const EditarUsuarioWidget({
    Key? key,
    required this.pUsuario,
  }) : super(key: key);

  final UsersRecord? pUsuario;

  @override
  _EditarUsuarioWidgetState createState() => _EditarUsuarioWidgetState();
}

class _EditarUsuarioWidgetState extends State<EditarUsuarioWidget> {
  late EditarUsuarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarUsuarioModel());

    _model.txtNombreUsuarioController ??=
        TextEditingController(text: widget.pUsuario?.nombreCompleto);
    _model.txtNombreUsuarioFocusNode ??= FocusNode();

    _model.txtNumeroTelefonicoController ??=
        TextEditingController(text: widget.pUsuario?.numeroTelefonico);
    _model.txtNumeroTelefonicoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: Color(0xE4F1F4F8),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.952,
                  height: 92.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF2B5DA5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Editar Usuario',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 16.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.txtNombreUsuarioController,
                          focusNode: _model.txtNombreUsuarioFocusNode,
                          autofocus: true,
                          autofillHints: [AutofillHints.name],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nombre Completo',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF2B5DA5),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF1F4F8),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF101213),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          validator: _model.txtNombreUsuarioControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 16.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.txtNumeroTelefonicoController,
                          focusNode: _model.txtNumeroTelefonicoFocusNode,
                          autofocus: true,
                          autofillHints: [AutofillHints.telephoneNumber],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Número Telefónico',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF2B5DA5),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF1F4F8),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF101213),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          keyboardType: TextInputType.phone,
                          validator: _model
                              .txtNumeroTelefonicoControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.ddTipoUsuarioValueController ??=
                          FormFieldController<String>(
                        _model.ddTipoUsuarioValue ??=
                            widget.pUsuario?.tipoUsuario,
                      ),
                      options: ['Admistrador', 'Trabajador', 'Cliente'],
                      onChanged: (val) =>
                          setState(() => _model.ddTipoUsuarioValue = val),
                      width: 300.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Open Sans',
                                fontSize: 16.0,
                              ),
                      hintText: 'Tipo de Usuario',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: Color(0xFFF1F4F8),
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).primaryText,
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 50.0, 8.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.pUsuario!.reference
                          .update(createUsersRecordData(
                        nombreCompleto: _model.txtNombreUsuarioController.text,
                        numeroTelefonico:
                            _model.txtNumeroTelefonicoController.text,
                        tipoUsuario: _model.ddTipoUsuarioValue,
                      ));
                      Navigator.pop(context);
                    },
                    text: 'Editar',
                    options: FFButtonOptions(
                      width: 110.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF3D9B9F),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Open Sans',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Cancelar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF585D62),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Open Sans',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
