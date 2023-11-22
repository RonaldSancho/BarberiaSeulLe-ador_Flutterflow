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

Future<bool> actualizarCorreoElectronico(
  String nuevoCorreoElectronico,
) async {
  // Add your function code here!
  bool success = false;

  var user = await FirebaseAuth.instance.currentUser!;

  final cred =
      await EmailAuthProvider.credential(email: user.email!, password: '');
  await user.reauthenticateWithCredential(cred).then((value) async {
    await user.updateEmail(nuevoCorreoElectronico).then((_) {
      success = true;
    }).catchError((error) {
      print(error);
    });
  }).catchError((err) {
    print(err);
  });

  return success;
}
