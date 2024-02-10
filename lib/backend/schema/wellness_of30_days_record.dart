import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WellnessOf30DaysRecord extends FirestoreRecord {
  WellnessOf30DaysRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  void _initializeFields() {
    _day = snapshotData['day'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _number = castToType<int>(snapshotData['number']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WellnessOf30Days');

  static Stream<WellnessOf30DaysRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WellnessOf30DaysRecord.fromSnapshot(s));

  static Future<WellnessOf30DaysRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WellnessOf30DaysRecord.fromSnapshot(s));

  static WellnessOf30DaysRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WellnessOf30DaysRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WellnessOf30DaysRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WellnessOf30DaysRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WellnessOf30DaysRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WellnessOf30DaysRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWellnessOf30DaysRecordData({
  String? day,
  String? title,
  String? description,
  String? image,
  int? number,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day': day,
      'title': title,
      'description': description,
      'image': image,
      'number': number,
    }.withoutNulls,
  );

  return firestoreData;
}

class WellnessOf30DaysRecordDocumentEquality
    implements Equality<WellnessOf30DaysRecord> {
  const WellnessOf30DaysRecordDocumentEquality();

  @override
  bool equals(WellnessOf30DaysRecord? e1, WellnessOf30DaysRecord? e2) {
    return e1?.day == e2?.day &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.number == e2?.number;
  }

  @override
  int hash(WellnessOf30DaysRecord? e) => const ListEquality()
      .hash([e?.day, e?.title, e?.description, e?.image, e?.number]);

  @override
  bool isValidKey(Object? o) => o is WellnessOf30DaysRecord;
}
