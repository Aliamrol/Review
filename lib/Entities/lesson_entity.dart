import 'package:json_annotation/json_annotation.dart';

part 'lesson_entity.g.dart';

@JsonSerializable()
class LessonEntity {
  int id;
  String title;
  String originalTitle;
  int position;
  List<Map<String, dynamic>> cards;
  String description;
  String urlId;
  String webTitle;
  Map<String, dynamic> localizedProperties;
  int wordsCount;
  int estimatedLearningTime;
  int categoryId;
  dynamic photo;
  dynamic photoThumbnail;
  Map<String, dynamic> hashedFields;

  LessonEntity(
      {required this.id,
      required this.title,
      required this.originalTitle,
      required this.position,
      required this.cards,
      required this.description,
      required this.urlId,
      required this.webTitle,
      required this.localizedProperties,
      required this.wordsCount,
      required this.estimatedLearningTime,
      required this.categoryId,
      required this.photo,
      required this.photoThumbnail,
      required this.hashedFields});

  factory LessonEntity.fromJson(Map<String, dynamic> json) =>
      _$LessonEntityFromJson(json);

  Map<String, dynamic> toJson(instance) => _$LessonEntityToJson(this);
}
