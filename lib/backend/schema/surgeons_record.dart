import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'surgeons_record.g.dart';

abstract class SurgeonsRecord
    implements Built<SurgeonsRecord, SurgeonsRecordBuilder> {
  static Serializer<SurgeonsRecord> get serializer =>
      _$surgeonsRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SurgeonsRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('surgeons');

  static Stream<SurgeonsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SurgeonsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SurgeonsRecord._();
  factory SurgeonsRecord([void Function(SurgeonsRecordBuilder) updates]) =
      _$SurgeonsRecord;

  static SurgeonsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSurgeonsRecordData({
  String name,
}) =>
    serializers.toFirestore(
        SurgeonsRecord.serializer, SurgeonsRecord((s) => s..name = name));
