import 'card_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'lesson_entity.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class LessonEntity {
  @HiveField(0)
  int id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String originalTitle;
  @HiveField(3)
  int position;
  @HiveField(4)
  List<CardEntity> cards;
  @HiveField(5)
  String description;
  @HiveField(6)
  String urlId;
  @HiveField(7)
  String webTitle;
  @HiveField(8)
  Map<String, dynamic> localizedProperties;
  @HiveField(9)
  int wordsCount;
  @HiveField(10)
  int estimatedLearningTime;
  @HiveField(11)
  int categoryId;
  @HiveField(12)
  var photo;
  @HiveField(13)
  var photoThumbnail;
  @HiveField(14)
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

  factory LessonEntity.fromJson(Map<String, dynamic> json) {
    return _$LessonEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LessonEntityToJson(this);
}
