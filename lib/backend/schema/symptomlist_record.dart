import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SymptomlistRecord extends FirestoreRecord {
  SymptomlistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Symptoms" field.
  DocumentReference? _symptoms;
  DocumentReference? get symptoms => _symptoms;
  bool hasSymptoms() => _symptoms != null;

  void _initializeFields() {
    _description = snapshotData['Description'] as String?;
    _symptoms = snapshotData['Symptoms'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symptomlist');

  static Stream<SymptomlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SymptomlistRecord.fromSnapshot(s));

  static Future<SymptomlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SymptomlistRecord.fromSnapshot(s));

  static SymptomlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SymptomlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SymptomlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SymptomlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SymptomlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SymptomlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSymptomlistRecordData({
  String? description,
  DocumentReference? symptoms,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Description': description,
      'Symptoms': symptoms,
    }.withoutNulls,
  );

  return firestoreData;
}

class SymptomlistRecordDocumentEquality implements Equality<SymptomlistRecord> {
  const SymptomlistRecordDocumentEquality();

  @override
  bool equals(SymptomlistRecord? e1, SymptomlistRecord? e2) {
    return e1?.description == e2?.description && e1?.symptoms == e2?.symptoms;
  }

  @override
  int hash(SymptomlistRecord? e) =>
      const ListEquality().hash([e?.description, e?.symptoms]);

  @override
  bool isValidKey(Object? o) => o is SymptomlistRecord;
}
