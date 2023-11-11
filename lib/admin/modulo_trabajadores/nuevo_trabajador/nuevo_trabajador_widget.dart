import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nuevo_trabajador_model.dart';
export 'nuevo_trabajador_model.dart';

class NuevoTrabajadorWidget extends StatefulWidget {
  const NuevoTrabajadorWidget({Key? key}) : super(key: key);

  @override
  _NuevoTrabajadorWidgetState createState() => _NuevoTrabajadorWidgetState();
}

class _NuevoTrabajadorWidgetState extends State<NuevoTrabajadorWidget> {
  late NuevoTrabajadorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NuevoTrabajadorModel());

    _model.txtNombreTrabajadorController ??= TextEditingController();
    _model.txtNombreTrabajadorFocusNode ??= FocusNode();

    _model.txtApellidosTrabajadorController ??= TextEditingController();
    _model.txtApellidosTrabajadorFocusNode ??= FocusNode();

    _model.txtCorreoElectronicoController ??= TextEditingController();
    _model.txtCorreoElectronicoFocusNode ??= FocusNode();

    _model.txtTelefonoController ??= TextEditingController();
    _model.txtTelefonoFocusNode ??= FocusNode();

    _model.txtDescripcionTrabajadorController ??= TextEditingController();
    _model.txtDescripcionTrabajadorFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xE4F1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFF2B5DA5),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back_sharp,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 29.0,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Nuevo Trabajador',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Open Sans',
                        color: Colors.white,
                        fontSize: 29.0,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.txtNombreTrabajadorController,
                            focusNode: _model.txtNombreTrabajadorFocusNode,
                            autofocus: true,
                            autofillHints: [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Nombre del Trabajador',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                            validator: _model
                                .txtNombreTrabajadorControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.txtApellidosTrabajadorController,
                            focusNode: _model.txtApellidosTrabajadorFocusNode,
                            autofocus: true,
                            autofillHints: [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Apellidos del Trabajador',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                            validator: _model
                                .txtApellidosTrabajadorControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.txtCorreoElectronicoController,
                            focusNode: _model.txtCorreoElectronicoFocusNode,
                            autofocus: true,
                            autofillHints: [AutofillHints.email],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Correo Electrónico',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                            keyboardType: TextInputType.emailAddress,
                            validator: _model
                                .txtCorreoElectronicoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.txtTelefonoController,
                            focusNode: _model.txtTelefonoFocusNode,
                            autofocus: true,
                            autofillHints: [AutofillHints.telephoneNumber],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Teléfono',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                            validator: _model.txtTelefonoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterFlowDropDown<String>(
                      controller: _model.ddTipoUsuarioValueController ??=
                          FormFieldController<String>(null),
                      options: [' Administrador', 'Trabajador'],
                      onChanged: (val) =>
                          setState(() => _model.ddTipoUsuarioValue = val),
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: 'Open Sans',
                                color: Color(0xFF57636C),
                              ),
                      hintText: 'Tipo de Usuario',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: Color(0xE4F1F4F8),
                      elevation: 2.0,
                      borderColor: Color(0xCE000000),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.txtDescripcionTrabajadorController,
                            focusNode: _model.txtDescripcionTrabajadorFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Descripción',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 16.0,
                                  ),
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCE000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF1F4F8),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                            validator: _model
                                .txtDescripcionTrabajadorControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();

                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            setState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl = downloadUrls.first;
                            });
                          } else {
                            setState(() {});
                            return;
                          }
                        }
                      },
                      text: 'Seleccionar Imagen',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await TrabajadoresRecord.collection
                            .doc()
                            .set(createTrabajadoresRecordData(
                              nombre: _model.txtNombreTrabajadorController.text,
                              apellidos:
                                  _model.txtApellidosTrabajadorController.text,
                              correoElectronico:
                                  _model.txtCorreoElectronicoController.text,
                              numeroTelefonico:
                                  _model.txtTelefonoController.text,
                              tipoUsuario: _model.ddTipoUsuarioValue,
                              descripcionTrabajador: _model
                                  .txtDescripcionTrabajadorController.text,
                              estado: 'Activo',
                              imagen: _model.uploadedFileUrl,
                            ));
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('¡Éxito!'),
                              content: Text('Trabajador registrado'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        context.safePop();
                      },
                      text: 'Guardar',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
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
                        context.safePop();
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
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
      ),
    );
  }
}
