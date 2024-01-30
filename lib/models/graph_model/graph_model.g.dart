// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DashboardDataDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DashboardDataDetailsImpl _$$DashboardDataDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardDataDetailsImpl(
      dailyvotes: (json['dailyvotes'] as List<dynamic>?)
          ?.map((e) => DailyVotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      characterVotes: (json['characterVotes'] as List<dynamic>?)
          ?.map((e) => CharacterVotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      top5Characters: (json['top5Characters'] as List<dynamic>?)
          ?.map((e) => Top5Characters.fromJson(e as Map<String, dynamic>))
          .toList(),
      shiftVotes: (json['shiftVotes'] as List<dynamic>?)
          ?.map((e) => ShiftVotes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardDataDetailsImplToJson(
        _$DashboardDataDetailsImpl instance) =>
    <String, dynamic>{
      'dailyvotes': instance.dailyvotes,
      'characterVotes': instance.characterVotes,
      'top5Characters': instance.top5Characters,
      'shiftVotes': instance.shiftVotes,
    };

_$DailyVotesImpl _$$DailyVotesImplFromJson(Map<String, dynamic> json) =>
    _$DailyVotesImpl(
      day: json['day'] as int?,
      votes: json['votes'] as int?,
    );

Map<String, dynamic> _$$DailyVotesImplToJson(_$DailyVotesImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'votes': instance.votes,
    };

_$CharacterVotesImpl _$$CharacterVotesImplFromJson(Map<String, dynamic> json) =>
    _$CharacterVotesImpl(
      character: json['character'] as String?,
      votes: json['votes'] as int?,
    );

Map<String, dynamic> _$$CharacterVotesImplToJson(
        _$CharacterVotesImpl instance) =>
    <String, dynamic>{
      'character': instance.character,
      'votes': instance.votes,
    };

_$Top5CharactersImpl _$$Top5CharactersImplFromJson(Map<String, dynamic> json) =>
    _$Top5CharactersImpl(
      character: json['character'] as String?,
      votes: json['votes'] as int?,
    );

Map<String, dynamic> _$$Top5CharactersImplToJson(
        _$Top5CharactersImpl instance) =>
    <String, dynamic>{
      'character': instance.character,
      'votes': instance.votes,
    };

_$ShiftVotesImpl _$$ShiftVotesImplFromJson(Map<String, dynamic> json) =>
    _$ShiftVotesImpl(
      shift: json['shift'] as String?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => CharacterVotes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShiftVotesImplToJson(_$ShiftVotesImpl instance) =>
    <String, dynamic>{
      'shift': instance.shift,
      'characters': instance.characters,
    };
