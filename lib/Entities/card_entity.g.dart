// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      id: json['id'] as int,
      mainTranslation: json['mainTranslation'] as Map<String, dynamic>?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      position: json['position'] as int?,
      updatedAt: json['updatedAt'] as String?,
      title: json['title'] as String?,
      phonetic: json['phonetic'] as String?,
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
