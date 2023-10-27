import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiciosRecord extends FirestoreRecord {
  ServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "trabajador" field.
  String? _trabajador;
  String get trabajador => _trabajador ?? '';
  bool hasTrabajador() => _trabajador != null;

  // "nombreServicio" field.
  String? _nombreServicio;
  String get nombreServicio => _nombreServicio ?? '';
  bool hasNombreServicio() => _nombreServicio != null;

  // "descripcionServicion" field.
  String? _descripcionServicion;
  String get descripcionServicion => _descripcionServicion ?? '';
  bool hasDescripcionServicion() => _descripcionServicion != null;

  // "imagenServicio" field.
  String? _imagenServicio;
  String get imagenServicio => _imagenServicio ?? '';
  bool hasImagenServicio() => _imagenServicio != null;

  // "precioServicio" field.
  double? _precioServicio;
  double get precioServicio => _precioServicio ?? 0.0;
  bool hasPrecioServicio() => _precioServicio != null;

  // "estadoServicio" field.
  String? _estadoServicio;
  String get estadoServicio => _estadoServicio ?? '';
  bool hasEstadoServicio() => _estadoServicio != null;

  void _initializeFields() {
    _trabajador = snapshotData['trabajador'] as String?;
    _nombreServicio = snapshotData['nombreServicio'] as String?;
    _descripcionServicion = snapshotData['descripcionServicion'] as String?;
    _imagenServicio = snapshotData['imagenServicio'] as String?;
    _precioServicio = castToType<double>(snapshotData['precioServicio']);
    _estadoServicio = snapshotData['estadoServicio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiciosRecord.fromSnapshot(s));

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiciosRecord.fromSnapshot(s));

  static ServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiciosRecordData({
  String? trabajador,
  String? nombreServicio,
  String? descripcionServicion,
  String? imagenServicio,
  double? precioServicio,
  String? estadoServicio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'trabajador': trabajador,
      'nombreServicio': nombreServicio,
      'descripcionServicion': descripcionServicion,
      'imagenServicio': imagenServicio,
      'precioServicio': precioServicio,
      'estadoServicio': estadoServicio,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiciosRecordDocumentEquality implements Equality<ServiciosRecord> {
  const ServiciosRecordDocumentEquality();

  @override
  bool equals(ServiciosRecord? e1, ServiciosRecord? e2) {
    return e1?.trabajador == e2?.trabajador &&
        e1?.nombreServicio == e2?.nombreServicio &&
        e1?.descripcionServicion == e2?.descripcionServicion &&
        e1?.imagenServicio == e2?.imagenServicio &&
        e1?.precioServicio == e2?.precioServicio &&
        e1?.estadoServicio == e2?.estadoServicio;
  }

  @override
  int hash(ServiciosRecord? e) => const ListEquality().hash([
        e?.trabajador,
        e?.nombreServicio,
        e?.descripcionServicion,
        e?.imagenServicio,
        e?.precioServicio,
        e?.estadoServicio
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiciosRecord;
}
