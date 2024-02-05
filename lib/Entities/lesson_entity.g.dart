// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonEntity _$LessonEntityFromJson(Map<String, dynamic> json) => LessonEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['originalTitle'] as String,
      position: json['position'] as int,
      cardsJson: (json['cards'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      description: json['description'] as String,
      urlId: json['urlId'] as String,
      webTitle: json['webTitle'] as String,
      localizedProperties: json['localizedProperties'] as Map<String, dynamic>,
      wordsCount: json['wordsCount'] as int,
      estimatedLearningTime: json['estimatedLearningTime'] as int,
      categoryId: json['categoryId'] as int,
      photo: json['photo'],
      photoThumbnail: json['photoThumbnail'],
      hashedFields: json['hashedFields'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$LessonEntityToJson(LessonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'position': instance.position,
      'cards': instance.cardsJson,
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
