import 'card_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lesson_entity.g.dart';

@JsonSerializable()
class LessonEntity {
  int id;
  String title;
  String originalTitle;
  int position;
  List<CardEntity> cards;
  String description;
  String urlId;
  String webTitle;
  Map<String, dynamic> localizedProperties;
  int wordsCount;
  int estimatedLearningTime;
  int categoryId;
  var photo;
  var photoThumbnail;
  Map<String, dynamic> hashedFields;

  LessonEntity(
      this.id,
      this.title,
      this.originalTitle,
      this.position,
      this.cards,
      this.description,
      this.urlId,
      this.webTitle,
      this.localizedProperties,
      this.wordsCount,
      this.estimatedLearningTime,
      this.categoryId,
      this.photo,
      this.photoThumbnail,
      this.hashedFields);

  factory LessonEntity.fromJson(Map<String, dynamic> json) =>
      _$LessonEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LessonEntityToJson(this);
}
