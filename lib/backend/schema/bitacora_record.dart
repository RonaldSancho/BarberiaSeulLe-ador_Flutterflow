import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BitacoraRecord extends FirestoreRecord {
  BitacoraRecord._(
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

  void _initializeFields() {
    _origenError = snapshotData['origenError'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bitacora');

  static Stream<BitacoraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BitacoraRecord.fromSnapshot(s));

  static Future<BitacoraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BitacoraRecord.fromSnapshot(s));

  static BitacoraRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BitacoraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BitacoraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BitacoraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BitacoraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BitacoraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBitacoraRecordData({
  String? origenError,
  String? descripcion,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'origenError': origenError,
      'descripcion': descripcion,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class BitacoraRecordDocumentEquality implements Equality<BitacoraRecord> {
  const BitacoraRecordDocumentEquality();

  @override
  bool equals(BitacoraRecord? e1, BitacoraRecord? e2) {
    return e1?.origenError == e2?.origenError &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(BitacoraRecord? e) =>
      const ListEquality().hash([e?.origenError, e?.descripcion, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is BitacoraRecord;
}
