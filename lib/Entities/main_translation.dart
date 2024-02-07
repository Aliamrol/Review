import 'package:uni/Entities/word_photo.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'main_translation.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class MainTranslation {
  @HiveField(0)
  int id;
  @HiveField(1)
  Map<String, dynamic> partOfSpeech;
  @HiveField(2)
  WordPhoto wordPhoto;
  @HiveField(3)
  int position;
  @HiveField(4)
  String translation;
  @HiveField(5)
  var alternativeTranslation;
  @HiveField(6)
  String otherTranslations;
  @HiveField(7)
  String pronunciation;
  @HiveField(8)
  String descriptionTitle;
  @HiveField(9)
  String description;
  @HiveField(10)
  List<Map<String, dynamic>> synonyms;
  @HiveField(11)
  List<dynamic> antonyms;
  @HiveField(12)
  List<dynamic> tags;
  @HiveField(13)
  String level;
  @HiveField(14)
  var hideNLPExamples;
  @HiveField(15)
  String visibility;
  @HiveField(16)
  var wiki;
  @HiveField(17)
  String updatedAt;
  @HiveField(18)
  Map<String, dynamic> localizedProperties;
  @HiveField(19)
  String automatedTranslatorDefinition;
  @HiveField(20)
  String title;
  @HiveField(21)
  String type;
  @HiveField(22)
  Map<String, dynamic> hashedFields;
  @HiveField(23)
  String titleVoice;

  MainTranslation(
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

  factory MainTranslation.fromJson(Map<String, dynamic> json) =>
      _$MainTranslationFromJson(json);

  Map<String, dynamic> toJson() => _$MainTranslationToJson(this);
}
