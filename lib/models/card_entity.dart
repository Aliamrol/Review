import 'package:json_annotation/json_annotation.dart';

part 'card_entity.g.dart';

@JsonSerializable()
class CardEntity {
  final String imageUrl;
  final String originalTitle;
  final String translation;
  final String pronunciation;

  CardEntity(
      {required this.imageUrl,
      required this.originalTitle,
      required this.translation,
      required this.pronunciation});

  factory CardEntity.fromJson(Map<String, dynamic> json) =>
      _$CardEntityFromJson(json);

  Map<String, dynamic> toJson(instance) => _$CardEntityToJson(this);
}
