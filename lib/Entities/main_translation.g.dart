// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainTranslation _$MainTranslationFromJson(Map<String, dynamic> json) =>
    MainTranslation(
      json['id'] as int,
      json['partOfSpeech'] as Map<String, dynamic>,
      WordPhoto.fromJson(json['wordPhoto'] as Map<String, dynamic>),
      json['position'] as int,
      json['translation'] as String,
      json['alternativeTranslation'],
      json['otherTranslations'] as String,
      json['pronunciation'] as String,
      json['descriptionTitle'] as String,
      json['description'] as String,
      (json['synonyms'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['antonyms'] as List<dynamic>,
      json['tags'] as List<dynamic>,
      json['level'] as String,
      json['hideNLPExamples'],
      json['visibility'] as String,
      json['wiki'],
      json['updatedAt'] as String,
      json['localizedProperties'] as Map<String, dynamic>,
      json['automatedTranslatorDefinition'] as String,
      json['title'] as String,
      json['type'] as String,
      json['hashedFields'] as Map<String, dynamic>,
      json['titleVoice'] as String,
    );

Map<String, dynamic> _$MainTranslationToJson(MainTranslation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partOfSpeech': instance.partOfSpeech,
      'wordPhoto': instance.wordPhoto,
      'position': instance.position,
      'translation': instance.translation,
      'alternativeTranslation': instance.alternativeTranslation,
      'otherTranslations': instance.otherTranslations,
      'pronunciation': instance.pronunciation,
      'descriptionTitle': instance.descriptionTitle,
      'description': instance.description,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'tags': instance.tags,
      'level': instance.level,
      'hideNLPExamples': instance.hideNLPExamples,
      'visibility': instance.visibility,
      'wiki': instance.wiki,
      'updatedAt': instance.updatedAt,
      'localizedProperties': instance.localizedProperties,
      'automatedTranslatorDefinition': instance.automatedTranslatorDefinition,
      'title': instance.title,
      'type': instance.type,
      'hashedFields': instance.hashedFields,
      'titleVoice': instance.titleVoice,
    };
