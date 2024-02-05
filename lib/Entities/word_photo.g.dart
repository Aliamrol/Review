// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordPhoto _$WordPhotoFromJson(Map<String, dynamic> json) => WordPhoto(
      originalTitle: json['originalTitle'] as String?,
      updatedAt: json['updatedAt'] as String?,
      description: json['description'] as String?,
      urlId: json['urlId'] as String?,
      webTitle: json['webTitle'] as String?,
      photo: json['photo'] as String?,
      photoThumbnail: json['photoThumbnail'] as String?,
    );

Map<String, dynamic> _$WordPhotoToJson(WordPhoto instance) => <String, dynamic>{
      'originalTitle': instance.originalTitle,
      'updatedAt': instance.updatedAt,
      'description': instance.description,
      'urlId': instance.urlId,
      'webTitle': instance.webTitle,
      'photo': instance.photo,
      'photoThumbnail': instance.photoThumbnail,
    };
