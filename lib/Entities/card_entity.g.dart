// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      json['id'] as int,
      MainTranslation.fromJson(json['mainTranslation'] as Map<String, dynamic>),
      json['type'] as String,
      json['description'] as String,
      json['position'] as int,
      json['updatedAt'] as String,
      json['title'] as String,
      json['phonetic'] as String,
    );

Map<String, dynamic> _$CardEntityToJson(CardEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mainTranslation': instance.mainTranslation,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'phonetic': instance.phonetic,
    };
