// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonEntityAdapter extends TypeAdapter<LessonEntity> {
  @override
  final int typeId = 0;

  @override
  LessonEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LessonEntity(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
      fields[3] as int,
      (fields[4] as List).cast<CardEntity>(),
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
      (fields[8] as Map).cast<String, dynamic>(),
      fields[9] as int,
      fields[10] as int,
      fields[11] as int,
      fields[12] as dynamic,
      fields[13] as dynamic,
      (fields[14] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, LessonEntity obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.originalTitle)
      ..writeByte(3)
      ..write(obj.position)
      ..writeByte(4)
      ..write(obj.cards)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.urlId)
      ..writeByte(7)
      ..write(obj.webTitle)
      ..writeByte(8)
      ..write(obj.localizedProperties)
      ..writeByte(9)
      ..write(obj.wordsCount)
      ..writeByte(10)
      ..write(obj.estimatedLearningTime)
      ..writeByte(11)
      ..write(obj.categoryId)
      ..writeByte(12)
      ..write(obj.photo)
      ..writeByte(13)
      ..write(obj.photoThumbnail)
      ..writeByte(14)
      ..write(obj.hashedFields);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonEntity _$LessonEntityFromJson(Map<String, dynamic> json) => LessonEntity(
      json['id'] as int,
      json['title'] as String,
      json['originalTitle'] as String,
      json['position'] as int,
      (json['cards'] as List<dynamic>)
          .map((e) => CardEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String,
      json['urlId'] as String,
      json['webTitle'] as String,
      json['localizedProperties'] as Map<String, dynamic>,
      json['wordsCount'] as int,
      json['estimatedLearningTime'] as int,
      json['categoryId'] as int,
      json['photo'],
      json['photoThumbnail'],
      json['hashedFields'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$LessonEntityToJson(LessonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'position': instance.position,
      'cards': instance.cards,
      'description': instance.description,
      'urlId': instance.urlId,
      'webTitle': instance.webTitle,
      'localizedProperties': instance.localizedProperties,
      'wordsCount': instance.wordsCount,
      'estimatedLearningTime': instance.estimatedLearningTime,
      'categoryId': instance.categoryId,
      'photo': instance.photo,
      'photoThumbnail': instance.photoThumbnail,
      'hashedFields': instance.hashedFields,
    };
