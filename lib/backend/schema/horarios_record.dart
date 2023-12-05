import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosRecord extends FirestoreRecord {
  HorariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  bool hasDia() => _dia != null;

  // "horarios" field.
  List<DateTime>? _horarios;
  List<DateTime> get horarios => _horarios ?? const [];
  bool hasHorarios() => _horarios != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _dia = snapshotData['dia'] as DateTime?;
    _horarios = getDataList(snapshotData['horarios']);
    _usuario = snapshotData['usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarios');

  static Stream<HorariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorariosRecord.fromSnapshot(s));

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorariosRecord.fromSnapshot(s));

  static HorariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorariosRecordData({
  DateTime? dia,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dia': dia,
      'usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorariosRecordDocumentEquality implements Equality<HorariosRecord> {
  const HorariosRecordDocumentEquality();

  @override
  bool equals(HorariosRecord? e1, HorariosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.dia == e2?.dia &&
        listEquality.equals(e1?.horarios, e2?.horarios) &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(HorariosRecord? e) =>
      const ListEquality().hash([e?.dia, e?.horarios, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is HorariosRecord;
}
