// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      imageUrl: json['imageUrl'] as String,
      originalTitle: json['originalTitle'] as String,
      translation: json['translation'] as String,
      pronunciation: json['pronunciation'] as String,
    );

Map<String, dynamic> _$CardEntityToJson(CardEntity instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'originalTitle': instance.originalTitle,
      'translation': instance.translation,
      'pronunciation': instance.pronunciation,
    };
