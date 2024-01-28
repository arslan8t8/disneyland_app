// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      characterId: json['characterId'] as int,
      characterName: json['characterName'] as String,
      totalVotes: json['totalVotes'] as int,
      isActive: json['isActive'] as bool,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
        _$CharacterModelImpl instance) =>
    <String, dynamic>{
      'characterId': instance.characterId,
      'characterName': instance.characterName,
      'totalVotes': instance.totalVotes,
      'isActive': instance.isActive,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };

_$CharacterDataImpl _$$CharacterDataImplFromJson(Map<String, dynamic> json) =>
    _$CharacterDataImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharacterDataImplToJson(_$CharacterDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
