import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Respiratorysymptoms" field.
  List<String>? _respiratorysymptoms;
  List<String> get respiratorysymptoms => _respiratorysymptoms ?? const [];
  bool hasRespiratorysymptoms() => _respiratorysymptoms != null;

  // "Digestivesymptoms" field.
  List<String>? _digestivesymptoms;
  List<String> get digestivesymptoms => _digestivesymptoms ?? const [];
  bool hasDigestivesymptoms() => _digestivesymptoms != null;

  // "Skinsymptoms" field.
  List<String>? _skinsymptoms;
  List<String> get skinsymptoms => _skinsymptoms ?? const [];
  bool hasSkinsymptoms() => _skinsymptoms != null;

  // "Painanddiscomfort" field.
  List<String>? _painanddiscomfort;
  List<String> get painanddiscomfort => _painanddiscomfort ?? const [];
  bool hasPainanddiscomfort() => _painanddiscomfort != null;

  void _initializeFields() {
    _respiratorysymptoms = getDataList(snapshotData['Respiratorysymptoms']);
    _digestivesymptoms = getDataList(snapshotData['Digestivesymptoms']);
    _skinsymptoms = getDataList(snapshotData['Skinsymptoms']);
    _painanddiscomfort = getDataList(snapshotData['Painanddiscomfort']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(
            e1?.respiratorysymptoms, e2?.respiratorysymptoms) &&
        listEquality.equals(e1?.digestivesymptoms, e2?.digestivesymptoms) &&
        listEquality.equals(e1?.skinsymptoms, e2?.skinsymptoms) &&
        listEquality.equals(e1?.painanddiscomfort, e2?.painanddiscomfort);
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality().hash([
        e?.respiratorysymptoms,
        e?.digestivesymptoms,
        e?.skinsymptoms,
        e?.painanddiscomfort
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
