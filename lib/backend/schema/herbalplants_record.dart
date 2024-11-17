import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HerbalplantsRecord extends FirestoreRecord {
  HerbalplantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Synonym" field.
  String? _synonym;
  String get synonym => _synonym ?? '';
  bool hasSynonym() => _synonym != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Benefits" field.
  String? _benefits;
  String get benefits => _benefits ?? '';
  bool hasBenefits() => _benefits != null;

  // "Symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  bool hasSymptoms() => _symptoms != null;

  // "UsesandPreparation" field.
  String? _usesandPreparation;
  String get usesandPreparation => _usesandPreparation ?? '';
  bool hasUsesandPreparation() => _usesandPreparation != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "sideeffects" field.
  String? _sideeffects;
  String get sideeffects => _sideeffects ?? '';
  bool hasSideeffects() => _sideeffects != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _synonym = snapshotData['Synonym'] as String?;
    _description = snapshotData['Description'] as String?;
    _benefits = snapshotData['Benefits'] as String?;
    _symptoms = getDataList(snapshotData['Symptoms']);
    _usesandPreparation = snapshotData['UsesandPreparation'] as String?;
    _image = snapshotData['Image'] as String?;
    _sideeffects = snapshotData['sideeffects'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Herbalplants');

  static Stream<HerbalplantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HerbalplantsRecord.fromSnapshot(s));

  static Future<HerbalplantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HerbalplantsRecord.fromSnapshot(s));

  static HerbalplantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HerbalplantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HerbalplantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HerbalplantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HerbalplantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HerbalplantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHerbalplantsRecordData({
  String? name,
  String? synonym,
  String? description,
  String? benefits,
  String? usesandPreparation,
  String? image,
  String? sideeffects,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Synonym': synonym,
      'Description': description,
      'Benefits': benefits,
      'UsesandPreparation': usesandPreparation,
      'Image': image,
      'sideeffects': sideeffects,
    }.withoutNulls,
  );

  return firestoreData;
}

class HerbalplantsRecordDocumentEquality
    implements Equality<HerbalplantsRecord> {
  const HerbalplantsRecordDocumentEquality();

  @override
  bool equals(HerbalplantsRecord? e1, HerbalplantsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.synonym == e2?.synonym &&
        e1?.description == e2?.description &&
        e1?.benefits == e2?.benefits &&
        listEquality.equals(e1?.symptoms, e2?.symptoms) &&
        e1?.usesandPreparation == e2?.usesandPreparation &&
        e1?.image == e2?.image &&
        e1?.sideeffects == e2?.sideeffects;
  }

  @override
  int hash(HerbalplantsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.synonym,
        e?.description,
        e?.benefits,
        e?.symptoms,
        e?.usesandPreparation,
        e?.image,
        e?.sideeffects
      ]);

  @override
  bool isValidKey(Object? o) => o is HerbalplantsRecord;
}
