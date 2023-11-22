import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErroresRecord extends FirestoreRecord {
  ErroresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "origenError" field.
  String? _origenError;
  String get origenError => _origenError ?? '';
  bool hasOrigenError() => _origenError != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "identificacionUsuario" field.
  DocumentReference? _identificacionUsuario;
  DocumentReference? get identificacionUsuario => _identificacionUsuario;
  bool hasIdentificacionUsuario() => _identificacionUsuario != null;

  // "nombreUsuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  void _initializeFields() {
    _origenError = snapshotData['origenError'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _identificacionUsuario =
        snapshotData['identificacionUsuario'] as DocumentReference?;
    _nombreUsuario = snapshotData['nombreUsuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('errores');

  static Stream<ErroresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ErroresRecord.fromSnapshot(s));

  static Future<ErroresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ErroresRecord.fromSnapshot(s));

  static ErroresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ErroresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ErroresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ErroresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ErroresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ErroresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createErroresRecordData({
  String? origenError,
  String? descripcion,
  DateTime? fecha,
  DocumentReference? identificacionUsuario,
  String? nombreUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'origenError': origenError,
      'descripcion': descripcion,
      'fecha': fecha,
      'identificacionUsuario': identificacionUsuario,
      'nombreUsuario': nombreUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class ErroresRecordDocumentEquality implements Equality<ErroresRecord> {
  const ErroresRecordDocumentEquality();

  @override
  bool equals(ErroresRecord? e1, ErroresRecord? e2) {
    return e1?.origenError == e2?.origenError &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha &&
        e1?.identificacionUsuario == e2?.identificacionUsuario &&
        e1?.nombreUsuario == e2?.nombreUsuario;
  }

  @override
  int hash(ErroresRecord? e) => const ListEquality().hash([
        e?.origenError,
        e?.descripcion,
        e?.fecha,
        e?.identificacionUsuario,
        e?.nombreUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is ErroresRecord;
}
