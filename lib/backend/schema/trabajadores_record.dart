import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrabajadoresRecord extends FirestoreRecord {
  TrabajadoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "correoElectronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  // "numeroTelefonico" field.
  String? _numeroTelefonico;
  String get numeroTelefonico => _numeroTelefonico ?? '';
  bool hasNumeroTelefonico() => _numeroTelefonico != null;

  // "tipoUsuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  bool hasTipoUsuario() => _tipoUsuario != null;

  // "descripcionTrabajador" field.
  String? _descripcionTrabajador;
  String get descripcionTrabajador => _descripcionTrabajador ?? '';
  bool hasDescripcionTrabajador() => _descripcionTrabajador != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _correoElectronico = snapshotData['correoElectronico'] as String?;
    _numeroTelefonico = snapshotData['numeroTelefonico'] as String?;
    _tipoUsuario = snapshotData['tipoUsuario'] as String?;
    _descripcionTrabajador = snapshotData['descripcionTrabajador'] as String?;
    _estado = snapshotData['estado'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trabajadores');

  static Stream<TrabajadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrabajadoresRecord.fromSnapshot(s));

  static Future<TrabajadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrabajadoresRecord.fromSnapshot(s));

  static TrabajadoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrabajadoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrabajadoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrabajadoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrabajadoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrabajadoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrabajadoresRecordData({
  String? nombre,
  String? apellidos,
  String? correoElectronico,
  String? numeroTelefonico,
  String? tipoUsuario,
  String? descripcionTrabajador,
  String? estado,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellidos': apellidos,
      'correoElectronico': correoElectronico,
      'numeroTelefonico': numeroTelefonico,
      'tipoUsuario': tipoUsuario,
      'descripcionTrabajador': descripcionTrabajador,
      'estado': estado,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrabajadoresRecordDocumentEquality
    implements Equality<TrabajadoresRecord> {
  const TrabajadoresRecordDocumentEquality();

  @override
  bool equals(TrabajadoresRecord? e1, TrabajadoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.correoElectronico == e2?.correoElectronico &&
        e1?.numeroTelefonico == e2?.numeroTelefonico &&
        e1?.tipoUsuario == e2?.tipoUsuario &&
        e1?.descripcionTrabajador == e2?.descripcionTrabajador &&
        e1?.estado == e2?.estado &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(TrabajadoresRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellidos,
        e?.correoElectronico,
        e?.numeroTelefonico,
        e?.tipoUsuario,
        e?.descripcionTrabajador,
        e?.estado,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is TrabajadoresRecord;
}
