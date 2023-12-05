import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaRecord extends FirestoreRecord {
  AgendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  bool hasDia() => _dia != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _dia = snapshotData['dia'] as DateTime?;
    _hora = snapshotData['hora'] as DateTime?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agenda');

  static Stream<AgendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaRecord.fromSnapshot(s));

  static Future<AgendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaRecord.fromSnapshot(s));

  static AgendaRecord fromSnapshot(DocumentSnapshot snapshot) => AgendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaRecordData({
  DateTime? dia,
  DateTime? hora,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dia': dia,
      'hora': hora,
      'usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaRecordDocumentEquality implements Equality<AgendaRecord> {
  const AgendaRecordDocumentEquality();

  @override
  bool equals(AgendaRecord? e1, AgendaRecord? e2) {
    return e1?.dia == e2?.dia &&
        e1?.hora == e2?.hora &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(AgendaRecord? e) =>
      const ListEquality().hash([e?.dia, e?.hora, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is AgendaRecord;
}
