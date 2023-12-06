// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//imports necesarios para generar el PDF
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<List<Map<String, dynamic>>> obtenerUsuarios() async {
  // Acceder a la colección 'users' en Firebase
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('users').get();

  // Convertir los datos a una lista de mapas
  List<Map<String, dynamic>> usuarios = querySnapshot.docs
      .map((DocumentSnapshot doc) => doc.data() as Map<String, dynamic>)
      .toList();

  return usuarios;
}

Future usuarioAPDF() async {
  // Obtener la lista de usuarios desde Firebase
  List<Map<String, dynamic>> usuarios = await obtenerUsuarios();

  final pdf = pw.Document();

// Titulo del PDF
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(children: [
        pw.Text("Lista de usuarios",
            style: const pw.TextStyle(
                fontSize: 40, fontWeight: pw.FontWeight.bold)),
        pw.Container(
          margin: pw.EdgeInsets.only(bottom: 20),
        ),
        for (var usuario in usuarios)
          pw.Container(
            margin: pw.EdgeInsets.only(bottom: 20),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Nombre del Usuario: ${usuario['nombreCompleto']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text('Correo Electrónico: ${usuario['email']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text('Número de teléfono: ${usuario['numeroTelefonico']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text('Descripción del Usuario: ${usuario['descripcion']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text('Rol del Usuario: ${usuario['tipoUsuario']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Divider(thickness: 2),
              ],
            ),
          ),
      ]);
    },
  ));

  // Save the PDF
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
