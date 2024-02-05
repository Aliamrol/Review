// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonEntity _$LessonEntityFromJson(Map<String, dynamic> json) => LessonEntity(
      json['id'] as int,
      json['title'] as String,
      json['originalTitle'] as String,
      json['position'] as int,
      (json['cards'] as List<dynamic>)
          .map((e) => CardEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String,
      json['urlId'] as String,
      json['webTitle'] as String,
      json['localizedProperties'] as Map<String, dynamic>,
      json['wordsCount'] as int,
      json['estimatedLearningTime'] as int,
      json['categoryId'] as int,
      json['photo'],
      json['photoThumbnail'],
      json['hashedFields'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$LessonEntityToJson(LessonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'position': instance.position,
      'cards': instance.cards,
      'description': instance.description,
      'urlId': instance.urlId,
      'webTitle': instance.webTitle,
      'localizedProperties': instance.localizedProperties,
      'wordsCount': instance.wordsCount,
      'estimatedLearningTime': instance.estimatedLearningTime,
      'categoryId': instance.categoryId,
      'photo': instance.photo,
      'photoThumbnail': instance.photoThumbnail,
      'hashedFields': instance.hashedFields,
    };
