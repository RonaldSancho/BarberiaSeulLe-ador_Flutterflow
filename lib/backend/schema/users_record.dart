import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "numeroTelefonico" field.
  String? _numeroTelefonico;
  String get numeroTelefonico => _numeroTelefonico ?? '';
  bool hasNumeroTelefonico() => _numeroTelefonico != null;

  // "tipoUsuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  bool hasTipoUsuario() => _tipoUsuario != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _numeroTelefonico = snapshotData['numeroTelefonico'] as String?;
    _tipoUsuario = snapshotData['tipoUsuario'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _nombreCompleto = snapshotData['nombreCompleto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? uid,
  DateTime? createdTime,
  String? displayName,
  String? photoUrl,
  String? nombre,
  String? apellidos,
  String? numeroTelefonico,
  String? tipoUsuario,
  String? email,
  String? phoneNumber,
  String? descripcion,
  String? nombreCompleto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'created_time': createdTime,
      'display_name': displayName,
      'photo_url': photoUrl,
      'nombre': nombre,
      'apellidos': apellidos,
      'numeroTelefonico': numeroTelefonico,
      'tipoUsuario': tipoUsuario,
      'email': email,
      'phone_number': phoneNumber,
      'descripcion': descripcion,
      'nombreCompleto': nombreCompleto,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.numeroTelefonico == e2?.numeroTelefonico &&
        e1?.tipoUsuario == e2?.tipoUsuario &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.descripcion == e2?.descripcion &&
        e1?.nombreCompleto == e2?.nombreCompleto;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.createdTime,
        e?.displayName,
        e?.photoUrl,
        e?.nombre,
        e?.apellidos,
        e?.numeroTelefonico,
        e?.tipoUsuario,
        e?.email,
        e?.phoneNumber,
        e?.descripcion,
        e?.nombreCompleto
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
