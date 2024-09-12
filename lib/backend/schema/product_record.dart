import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "part_number" field.
  String? _partNumber;
  String get partNumber => _partNumber ?? '';
  bool hasPartNumber() => _partNumber != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _price = castToType<double>(snapshotData['price']);
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _brand = snapshotData['brand'] as String?;
    _category = snapshotData['category'] as String?;
    _stock = castToType<int>(snapshotData['stock']);
    _partNumber = snapshotData['part_number'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  double? price,
  String? name,
  String? description,
  String? imageUrl,
  String? brand,
  String? category,
  int? stock,
  String? partNumber,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'name': name,
      'description': description,
      'image_url': imageUrl,
      'brand': brand,
      'category': category,
      'stock': stock,
      'part_number': partNumber,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.brand == e2?.brand &&
        e1?.category == e2?.category &&
        e1?.stock == e2?.stock &&
        e1?.partNumber == e2?.partNumber &&
        e1?.time == e2?.time;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.price,
        e?.name,
        e?.description,
        e?.imageUrl,
        e?.brand,
        e?.category,
        e?.stock,
        e?.partNumber,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
