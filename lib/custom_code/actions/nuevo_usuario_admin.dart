// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference?> nuevoUsuarioAdmin(
  String correoElectronico,
  String nombreCompleto,
  String numeroTelefonico,
  String tipoUsuario,
  String randomDocGebn,
  String contrasenna,
  String? descripcionTrabajador,
  DocumentReference identificacionUsuario,
  String nombreUsuario,
) async {
  try {
    DateTime createdTime = DateTime.now();

    FirebaseApp app = await Firebase.initializeApp(
        name: randomDocGebn, options: Firebase.app().options);

    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(
            email: correoElectronico, password: contrasenna);

    String? uid = userCredential.user?.uid;

    final CollectionReference usuarios =
        FirebaseFirestore.instance.collection('users');

    usuarios.doc(uid).set({
      'uid': uid,
      'email': correoElectronico,
      'numeroTelefonico': numeroTelefonico,
      'tipoUsuario': tipoUsuario,
      'descripcion': descripcionTrabajador,
      'nombreCompleto': nombreCompleto,
    });

    final firestore = FirebaseFirestore.instance;
    final collectionUsuario = firestore.collection('users');
    final usuarioEncontrado =
        await collectionUsuario.where('uid', isEqualTo: uid).get();

    UsersRecord usuario =
        await UsersRecord.fromSnapshot(usuarioEncontrado.docs[0]);

    DocumentReference usuarioRef =
        FirebaseFirestore.instance.doc('/users/' + usuario.uid);

    return usuarioRef;
  } on FirebaseException catch (e) {
    String? origen = "Origen del error: nuevoUsuarioAdmin" + " " + e.plugin;
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
