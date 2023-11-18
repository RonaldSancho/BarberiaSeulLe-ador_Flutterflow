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

Future serviciosAExcel(List<ServiciosRecord> coleccionServicios) async {
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
}
