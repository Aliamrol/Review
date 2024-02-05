import 'package:uni/Entities/word_photo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main_translation_entity.g.dart';

@JsonSerializable()
class MainTranslationEntity {
  int id;
  Map<String, dynamic> partOfSpeech;
  WordPhoto wordPhoto;
  int position;
  String translation;
  var alternativeTranslation;
  String otherTranslations;
  String pronunciation;
  String descriptionTitle;
  String description;
  List<Map<String, dynamic>> synonyms;
  List<dynamic> antonyms;
  List<dynamic> tags;
  String level;
  var hideNLPExamples;
  String visibility;
  var wiki;
  String updatedAt;
  Map<String, dynamic> localizedProperties;
  String automatedTranslatorDefinition;
  String title;
  String type;
  Map<String, dynamic> hashedFields;
  String titleVoice;

  MainTranslationEntity(
      this.id,
      this.partOfSpeech,
      this.wordPhoto,
      this.position,
      this.translation,
      this.alternativeTranslation,
      this.otherTranslations,
      this.pronunciation,
      this.descriptionTitle,
      this.description,
      this.synonyms,
      this.antonyms,
      this.tags,
      this.level,
      this.hideNLPExamples,
      this.visibility,
      this.wiki,
      this.updatedAt,
      this.localizedProperties,
      this.automatedTranslatorDefinition,
      this.title,
      this.type,
      this.hashedFields,
      this.titleVoice);

  factory MainTranslationEntity.fromJson(Map<String, dynamic> json) =>
      _$MainTranslationEntityFromJson(json);

  Map<String, dynamic> toJson(instance) => _$MainTranslationEntityToJson(this);
}
