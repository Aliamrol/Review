// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordPhoto _$WordPhotoFromJson(Map<String, dynamic> json) => WordPhoto(
      json['originalTitle'] as String,
      json['updatedAt'] as String,
      json['description'] as String,
      json['urlId'] as String,
      json['webTitle'] as String,
      json['photo'] as String,
      json['photoThumbnail'] as String,
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
