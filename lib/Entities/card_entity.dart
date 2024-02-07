import 'package:uni/Entities/main_translation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'card_entity.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class CardEntity {
  @HiveField(0)
  int id;
  @HiveField(1)
  MainTranslation mainTranslation;
  @HiveField(2)
  String type;
  @HiveField(3)
  String description;
  @HiveField(4)
  int position;
  @HiveField(5)
  String updatedAt;
  @HiveField(6)
  String title;
  @HiveField(7)
  String phonetic;

  CardEntity(this.id, this.mainTranslation, this.type, this.description,
      this.position, this.updatedAt, this.title, this.phonetic);

  factory CardEntity.fromJson(Map<String, dynamic> json) =>
      _$CardEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CardEntityToJson(this);
}
