import 'package:json_annotation/json_annotation.dart';

part 'word_photo.g.dart';

@JsonSerializable()
class WordPhoto {
  String originalTitle;
  String updatedAt;
  String description;
  String urlId;
  String webTitle;
  String photo;
  String photoThumbnail;

  WordPhoto(this.originalTitle, this.updatedAt, this.description, this.urlId,
      this.webTitle, this.photo, this.photoThumbnail);

  factory WordPhoto.fromJson(Map<String, dynamic> json) =>
      _$WordPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$WordPhotoToJson(this);
}
