import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_model.freezed.dart';
part 'graph_model.g.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    int? status,
    String? message,
    DashboardDataDetails? data,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) => _$DashboardDataFromJson(json);
}

@freezed
class DashboardDataDetails with _$DashboardDataDetails {
  const factory DashboardDataDetails({
    List<DailyVotes>? dailyvotes,
    List<CharacterVotes>? characterVotes,
    List<Top5Characters>? top5Characters,
    List<ShiftVotes>? shiftVotes,
  }) = _DashboardDataDetails;

  factory DashboardDataDetails.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataDetailsFromJson(json);
}

@freezed
class DailyVotes with _$DailyVotes {
  const factory DailyVotes({
    int? day,
    int? votes,
  }) = _DailyVotes;

  factory DailyVotes.fromJson(Map<String, dynamic> json) => _$DailyVotesFromJson(json);
}

@freezed
class CharacterVotes with _$CharacterVotes {
  const factory CharacterVotes({
    String? character,
    int? votes,
  }) = _CharacterVotes;

  factory CharacterVotes.fromJson(Map<String, dynamic> json) => _$CharacterVotesFromJson(json);
}

@freezed
class Top5Characters with _$Top5Characters {
  const factory Top5Characters({
    String? character,
    int? votes,
  }) = _Top5Characters;

  factory Top5Characters.fromJson(Map<String, dynamic> json) => _$Top5CharactersFromJson(json);
}

@freezed
class ShiftVotes with _$ShiftVotes {
  const factory ShiftVotes({
    String? shift,
    List<CharacterVotes>? characters,
  }) = _ShiftVotes;

  factory ShiftVotes.fromJson(Map<String, dynamic> json) => _$ShiftVotesFromJson(json);
}
