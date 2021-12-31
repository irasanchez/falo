import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ads_record.g.dart';

abstract class AdsRecord implements Built<AdsRecord, AdsRecordBuilder> {
  static Serializer<AdsRecord> get serializer => _$adsRecordSerializer;

  @nullable
  String get title;

  @nullable
  String get description;

  @nullable
  String get buttonText;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AdsRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..buttonText = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ads');

  static Stream<AdsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AdsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AdsRecord._();
  factory AdsRecord([void Function(AdsRecordBuilder) updates]) = _$AdsRecord;

  static AdsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAdsRecordData({
  String title,
  String description,
  String buttonText,
}) =>
    serializers.toFirestore(
        AdsRecord.serializer,
        AdsRecord((a) => a
          ..title = title
          ..description = description
          ..buttonText = buttonText));
