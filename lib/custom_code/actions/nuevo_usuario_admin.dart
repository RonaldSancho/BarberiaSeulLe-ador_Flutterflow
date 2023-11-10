// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference> nuevoUsuarioAdmin(
  String correoElectronico,
  String nombreUsuario,
  String apellidosUsuario,
  String numeroTelefonico,
  String tipoUsuario,
  String randomDocGebn,
  String contrasenna,
) async {
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
    'nombre': nombreUsuario,
    'apellidos': apellidosUsuario,
    'numeroTelefonico': numeroTelefonico,
    'tipoUsuario': tipoUsuario
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
}
