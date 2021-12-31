import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dashboard_cards_record.g.dart';

abstract class DashboardCardsRecord
    implements Built<DashboardCardsRecord, DashboardCardsRecordBuilder> {
  static Serializer<DashboardCardsRecord> get serializer =>
      _$dashboardCardsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'card_title')
  String get cardTitle;

  @nullable
  @BuiltValueField(wireName: 'card_description')
  String get cardDescription;

  @nullable
  @BuiltValueField(wireName: 'card_type')
  String get cardType;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DashboardCardsRecordBuilder builder) => builder
    ..cardTitle = ''
    ..cardDescription = ''
    ..cardType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dashboard_cards');

  static Stream<DashboardCardsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DashboardCardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DashboardCardsRecord._();
  factory DashboardCardsRecord(
          [void Function(DashboardCardsRecordBuilder) updates]) =
      _$DashboardCardsRecord;

  static DashboardCardsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDashboardCardsRecordData({
  String cardTitle,
  String cardDescription,
  String cardType,
}) =>
    serializers.toFirestore(
        DashboardCardsRecord.serializer,
        DashboardCardsRecord((d) => d
          ..cardTitle = cardTitle
          ..cardDescription = cardDescription
          ..cardType = cardType));
