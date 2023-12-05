// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:download/download.dart';
import 'dart:convert' show utf8;

Future usuarioAExcel(List<UsersRecord> coleccionUsuario,
    DocumentReference identificacionUsuario, String nombreUsuario) async {
  try {
    coleccionUsuario = coleccionUsuario ?? [];
    String fileContent =
        "nombreCompleto, numeroTelefonico, tipoUsuario, email, photoUrl,descripcion ";
    coleccionUsuario.asMap().forEach((index, record) => fileContent =
        fileContent +
            "\n" +
            record.nombreCompleto.toString() +
            "," +
            record.numeroTelefonico.toString() +
            "," +
            record.tipoUsuario.toString() +
            "," +
            record.email.toString() +
            "," +
            record.photoUrl.toString() +
            "," +
            record.descripcion.toString());
    final fileName = "ListaUsuarios.csv";
    var bytes = utf8.encode(fileContent);
    final stream = Stream.fromIterable(bytes);

    return download(stream, fileName);
  } on FirebaseException catch (e) {
    String? origen = "Origen del error: usuarioAExcel" + " " + e.plugin;
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
