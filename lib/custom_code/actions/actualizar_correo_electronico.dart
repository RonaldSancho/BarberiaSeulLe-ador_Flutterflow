// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> actualizarCorreoElectronico(String nuevoCorreoElectronico) async {
  bool success = false;

  try {
    var user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Actualiza el correo electrónico en Firebase Auth
      await user.updateEmail(nuevoCorreoElectronico);

      // Actualiza el correo electrónico en la colección 'users' de Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .update({'email': nuevoCorreoElectronico});

      success = true;
    }
  } catch (error) {
    print('Error al actualizar el correo electrónico: $error');
  }

  return success;
}
