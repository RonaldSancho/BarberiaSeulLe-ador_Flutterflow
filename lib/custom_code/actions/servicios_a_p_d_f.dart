// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//imports necesarios para generar el PDF
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<List<Map<String, dynamic>>> obtenerServicios() async {
  // Acceder a la colección 'users' en Firebase
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('servicios').get();

  // Convertir los datos a una lista de mapas
  List<Map<String, dynamic>> servicios = querySnapshot.docs
      .map((DocumentSnapshot doc) => doc.data() as Map<String, dynamic>)
      .toList();

  return servicios;
}

Future serviciosAPDF() async {
  // Obtener la lista de usuarios desde Firebase
  List<Map<String, dynamic>> servicios = await obtenerServicios();

  final pdf = pw.Document();

  // Titulo del PDF
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(children: [
        pw.Text("Lista de servicios",
            style: const pw.TextStyle(
                fontSize: 40, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 20),
        for (var servicio in servicios)
          pw.Container(
            margin: pw.EdgeInsets.only(bottom: 20),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Nombre del Servicio: ${servicio['nombreServicio']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text('Descripción: ${servicio['descripcionServicion']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text(
                    'Precio del Servicio: \u20A1${servicio['precioServicio']}',
                    style: const pw.TextStyle(fontSize: 16)),
                pw.Text('Trabajador encargado: ${servicio['trabajador']}',
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
