// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardEntityAdapter extends TypeAdapter<CardEntity> {
  @override
  final int typeId = 1;

  @override
  CardEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CardEntity(
      fields[0] as int,
      fields[1] as MainTranslation,
      fields[2] as String,
      fields[3] as String,
      fields[4] as int,
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CardEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mainTranslation)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.position)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.title)
      ..writeByte(7)
      ..write(obj.phonetic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      json['id'] as int,
      MainTranslation.fromJson(json['mainTranslation'] as Map<String, dynamic>),
      json['type'] as String,
      json['description'] as String,
      json['position'] as int,
      json['updatedAt'] as String,
      json['title'] as String,
      json['phonetic'] as String,
    );

Map<String, dynamic> _$CardEntityToJson(CardEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mainTranslation': instance.mainTranslation,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'phonetic': instance.phonetic,
    };
