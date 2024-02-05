import 'package:uni/Entities/main_translation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_entity.g.dart';

@JsonSerializable()
class CardEntity {
  int id;
  MainTranslation mainTranslation;
  String type;
  String description;
  int position;
  String updatedAt;
  String title;
  String phonetic;

  CardEntity(this.id, this.mainTranslation, this.type, this.description,
      this.position, this.updatedAt, this.title, this.phonetic);

  factory CardEntity.fromJson(Map<String, dynamic> json) =>
      _$CardEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CardEntityToJson(this);
}
