// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:download/download.dart';
import 'dart:convert' show utf8;

Future serviciosAExcel(List<ServiciosRecord> coleccionServicios,
    DocumentReference identificacionUsuario, String nombreUsuario) async {
  try {
    coleccionServicios = coleccionServicios ?? [];
    String fileContent =
        "nombreServicio, descripcionServicion, trabajador, precioServicio, estadoServicio, imagenServicio";
    coleccionServicios.asMap().forEach((index, record) => fileContent =
        fileContent +
            "\n" +
            record.nombreServicio.toString() +
            "," +
            record.descripcionServicion.toString() +
            "," +
            record.trabajador.toString() +
            "," +
            record.precioServicio.toString() +
            "," +
            record.estadoServicio.toString() +
            "," +
            record.imagenServicio.toString());
    final fileName = "ListaServicios.csv";
    var bytes = utf8.encode(fileContent);
    final stream = Stream.fromIterable(bytes);

    return download(stream, fileName);
  } on FirebaseException catch (e) {
    String? origen = "Origen del error: serviciosExcel" + " " + e.plugin;
    String? descripcion = e.message;
    DateTime horaError = DateTime.now();
    final CollectionReference<Map<String, dynamic>> bitacora =
        FirebaseFirestore.instance.collection('errores');

    bitacora.doc().set({
      'origenError': origen,
      'descripcion': descripcion,
      'fecha': horaError,
      'identificacionUsuario': identificacionUsuario,
      'nombreUsuario': nombreUsuario
    });
  }
}
