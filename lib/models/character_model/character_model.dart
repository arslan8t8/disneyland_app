import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    required int characterId,
    required String characterName,
    required int totalVotes,
    required bool isActive,
    String? description,
    required String imageUrl,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) => _$CharacterModelFromJson(json);
}

@freezed
abstract class CharacterData with _$CharacterData {
  factory CharacterData({
    required int status,
    required String message,
    required List<CharacterModel> data,
  }) = _CharacterData;

  factory CharacterData.fromJson(Map<String, dynamic> json) => _$CharacterDataFromJson(json);
}
