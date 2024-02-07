// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_photo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordPhotoAdapter extends TypeAdapter<WordPhoto> {
  @override
  final int typeId = 3;

  @override
  WordPhoto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WordPhoto(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WordPhoto obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.originalTitle)
      ..writeByte(1)
      ..write(obj.updatedAt)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.urlId)
      ..writeByte(4)
      ..write(obj.webTitle)
      ..writeByte(5)
      ..write(obj.photo)
      ..writeByte(6)
      ..write(obj.photoThumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordPhotoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
