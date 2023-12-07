import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecomendacionesRecord extends FirestoreRecord {
  RecomendacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _comentario = snapshotData['comentario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recomendaciones');

  static Stream<RecomendacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecomendacionesRecord.fromSnapshot(s));

  static Future<RecomendacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecomendacionesRecord.fromSnapshot(s));

  static RecomendacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecomendacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecomendacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecomendacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecomendacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecomendacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecomendacionesRecordData({
  String? usuario,
  DateTime? fecha,
  String? comentario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'fecha': fecha,
      'comentario': comentario,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecomendacionesRecordDocumentEquality
    implements Equality<RecomendacionesRecord> {
  const RecomendacionesRecordDocumentEquality();

  @override
  bool equals(RecomendacionesRecord? e1, RecomendacionesRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.fecha == e2?.fecha &&
        e1?.comentario == e2?.comentario;
  }

  @override
  int hash(RecomendacionesRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.fecha, e?.comentario]);

  @override
  bool isValidKey(Object? o) => o is RecomendacionesRecord;
}
