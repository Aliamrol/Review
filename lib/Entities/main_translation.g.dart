// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_translation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MainTranslationAdapter extends TypeAdapter<MainTranslation> {
  @override
  final int typeId = 2;

  @override
  MainTranslation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MainTranslation(
      fields[0] as int,
      (fields[1] as Map).cast<String, dynamic>(),
      fields[2] as WordPhoto,
      fields[3] as int,
      fields[4] as String,
      fields[5] as dynamic,
      fields[6] as String,
      fields[7] as String,
      fields[8] as String,
      fields[9] as String,
      (fields[10] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      (fields[11] as List).cast<dynamic>(),
      (fields[12] as List).cast<dynamic>(),
      fields[13] as String,
      fields[14] as dynamic,
      fields[15] as String,
      fields[16] as dynamic,
      fields[17] as String,
      (fields[18] as Map).cast<String, dynamic>(),
      fields[19] as String,
      fields[20] as String,
      fields[21] as String,
      (fields[22] as Map).cast<String, dynamic>(),
      fields[23] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MainTranslation obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.partOfSpeech)
      ..writeByte(2)
      ..write(obj.wordPhoto)
      ..writeByte(3)
      ..write(obj.position)
      ..writeByte(4)
      ..write(obj.translation)
      ..writeByte(5)
      ..write(obj.alternativeTranslation)
      ..writeByte(6)
      ..write(obj.otherTranslations)
      ..writeByte(7)
      ..write(obj.pronunciation)
      ..writeByte(8)
      ..write(obj.descriptionTitle)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.synonyms)
      ..writeByte(11)
      ..write(obj.antonyms)
      ..writeByte(12)
      ..write(obj.tags)
      ..writeByte(13)
      ..write(obj.level)
      ..writeByte(14)
      ..write(obj.hideNLPExamples)
      ..writeByte(15)
      ..write(obj.visibility)
      ..writeByte(16)
      ..write(obj.wiki)
      ..writeByte(17)
      ..write(obj.updatedAt)
      ..writeByte(18)
      ..write(obj.localizedProperties)
      ..writeByte(19)
      ..write(obj.automatedTranslatorDefinition)
      ..writeByte(20)
      ..write(obj.title)
      ..writeByte(21)
      ..write(obj.type)
      ..writeByte(22)
      ..write(obj.hashedFields)
      ..writeByte(23)
      ..write(obj.titleVoice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainTranslationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainTranslation _$MainTranslationFromJson(Map<String, dynamic> json) =>
    MainTranslation(
      json['id'] as int,
      json['partOfSpeech'] as Map<String, dynamic>,
      WordPhoto.fromJson(json['wordPhoto'] as Map<String, dynamic>),
      json['position'] as int,
      json['translation'] as String,
      json['alternativeTranslation'],
      json['otherTranslations'] as String,
      json['pronunciation'] as String,
      json['descriptionTitle'] as String,
      json['description'] as String,
      (json['synonyms'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['antonyms'] as List<dynamic>,
      json['tags'] as List<dynamic>,
      json['level'] as String,
      json['hideNLPExamples'],
      json['visibility'] as String,
      json['wiki'],
      json['updatedAt'] as String,
      json['localizedProperties'] as Map<String, dynamic>,
      json['automatedTranslatorDefinition'] as String,
      json['title'] as String,
      json['type'] as String,
      json['hashedFields'] as Map<String, dynamic>,
      json['titleVoice'] as String,
    );

Map<String, dynamic> _$MainTranslationToJson(MainTranslation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partOfSpeech': instance.partOfSpeech,
      'wordPhoto': instance.wordPhoto,
      'position': instance.position,
      'translation': instance.translation,
      'alternativeTranslation': instance.alternativeTranslation,
      'otherTranslations': instance.otherTranslations,
      'pronunciation': instance.pronunciation,
      'descriptionTitle': instance.descriptionTitle,
      'description': instance.description,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'tags': instance.tags,
      'level': instance.level,
      'hideNLPExamples': instance.hideNLPExamples,
      'visibility': instance.visibility,
      'wiki': instance.wiki,
      'updatedAt': instance.updatedAt,
      'localizedProperties': instance.localizedProperties,
      'automatedTranslatorDefinition': instance.automatedTranslatorDefinition,
      'title': instance.title,
      'type': instance.type,
      'hashedFields': instance.hashedFields,
      'titleVoice': instance.titleVoice,
    };
