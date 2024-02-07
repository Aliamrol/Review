import 'package:json_annotation/json_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'word_photo.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class WordPhoto {
  @HiveField(0)
  String originalTitle;
  @HiveField(1)
  String updatedAt;
  @HiveField(2)
  String description;
  @HiveField(3)
  String urlId;
  @HiveField(4)
  String webTitle;
  @HiveField(5)
  String photo;
  @HiveField(6)
  String photoThumbnail;

  WordPhoto(this.originalTitle, this.updatedAt, this.description, this.urlId,
      this.webTitle, this.photo, this.photoThumbnail);

  factory WordPhoto.fromJson(Map<String, dynamic> json) =>
      _$WordPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$WordPhotoToJson(this);
}
