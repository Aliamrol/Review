import 'package:json_annotation/json_annotation.dart';
import 'card_entity.dart';

part 'word_photo.g.dart';

@JsonSerializable()
class WordPhoto {
  WordPhoto({
    String? originalTitle,
    String? updatedAt,
    String? description,
    String? urlId,
    String? webTitle,
    String? photo,
    String? photoThumbnail,
  }) {
    _originalTitle = originalTitle;
    _updatedAt = updatedAt;
    _description = description;
    _urlId = urlId;
    _webTitle = webTitle;
    _photo = photo;
    _photoThumbnail = photoThumbnail;
  }

  WordPhoto.fromJson(dynamic json) {
    _originalTitle = json['originalTitle'];
    _updatedAt = json['updatedAt'];
    _description = json['description'];
    _urlId = json['urlId'];
    _webTitle = json['webTitle'];
    _photo = json['photo'];
    _photoThumbnail = json['photoThumbnail'];
  }

  String? _originalTitle;
  String? _updatedAt;
  String? _description;
  String? _urlId;
  String? _webTitle;
  String? _photo;
  String? _photoThumbnail;

  WordPhoto copyWith({
    String? originalTitle,
    String? updatedAt,
    String? description,
    String? urlId,
    String? webTitle,
    String? photo,
    String? photoThumbnail,
  }) =>
      WordPhoto(
        originalTitle: originalTitle ?? _originalTitle,
        updatedAt: updatedAt ?? _updatedAt,
        description: description ?? _description,
        urlId: urlId ?? _urlId,
        webTitle: webTitle ?? _webTitle,
        photo: photo ?? _photo,
        photoThumbnail: photoThumbnail ?? _photoThumbnail,
      );

  String? get originalTitle => _originalTitle;

  String? get updatedAt => _updatedAt;

  String? get description => _description;

  String? get urlId => _urlId;

  String? get webTitle => _webTitle;

  String? get photo => _photo;

  String? get photoThumbnail => _photoThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['originalTitle'] = _originalTitle;
    map['updatedAt'] = _updatedAt;
    map['description'] = _description;
    map['urlId'] = _urlId;
    map['webTitle'] = _webTitle;
    map['photo'] = _photo;
    map['photoThumbnail'] = _photoThumbnail;
    return map;
  }
}
