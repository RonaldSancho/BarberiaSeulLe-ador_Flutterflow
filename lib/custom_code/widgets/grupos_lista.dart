// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class GruposLista extends StatefulWidget {
  const GruposLista({
    Key? key,
    this.width,
    this.height,
    required this.colecciondatos,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<AgendaRecord> colecciondatos;

  @override
  _GruposListaState createState() => _GruposListaState();
}

class _GruposListaState extends State<GruposLista> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
