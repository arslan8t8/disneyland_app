// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DashboardDataDetails? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call({int? status, String? message, DashboardDataDetails? data});

  $DashboardDataDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardDataDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardDataDetailsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DashboardDataDetailsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
          _$DashboardDataImpl value, $Res Function(_$DashboardDataImpl) then) =
      __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, DashboardDataDetails? data});

  @override
  $DashboardDataDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
      _$DashboardDataImpl _value, $Res Function(_$DashboardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DashboardDataImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardDataDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl({this.status, this.message, this.data});

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final DashboardDataDetails? data;

  @override
  String toString() {
    return 'DashboardData(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
      {final int? status,
      final String? message,
      final DashboardDataDetails? data}) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  DashboardDataDetails? get data;
  @override
  @JsonKey(ignore: true)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardDataDetails _$DashboardDataDetailsFromJson(Map<String, dynamic> json) {
  return _DashboardDataDetails.fromJson(json);
}

/// @nodoc
mixin _$DashboardDataDetails {
  List<DailyVotes>? get dailyvotes => throw _privateConstructorUsedError;
  List<CharacterVotes>? get characterVotes =>
      throw _privateConstructorUsedError;
  List<Top5Characters>? get top5Characters =>
      throw _privateConstructorUsedError;
  List<ShiftVotes>? get shiftVotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardDataDetailsCopyWith<DashboardDataDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataDetailsCopyWith<$Res> {
  factory $DashboardDataDetailsCopyWith(DashboardDataDetails value,
          $Res Function(DashboardDataDetails) then) =
      _$DashboardDataDetailsCopyWithImpl<$Res, DashboardDataDetails>;
  @useResult
  $Res call(
      {List<DailyVotes>? dailyvotes,
      List<CharacterVotes>? characterVotes,
      List<Top5Characters>? top5Characters,
      List<ShiftVotes>? shiftVotes});
}

/// @nodoc
class _$DashboardDataDetailsCopyWithImpl<$Res,
        $Val extends DashboardDataDetails>
    implements $DashboardDataDetailsCopyWith<$Res> {
  _$DashboardDataDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyvotes = freezed,
    Object? characterVotes = freezed,
    Object? top5Characters = freezed,
    Object? shiftVotes = freezed,
  }) {
    return _then(_value.copyWith(
      dailyvotes: freezed == dailyvotes
          ? _value.dailyvotes
          : dailyvotes // ignore: cast_nullable_to_non_nullable
              as List<DailyVotes>?,
      characterVotes: freezed == characterVotes
          ? _value.characterVotes
          : characterVotes // ignore: cast_nullable_to_non_nullable
              as List<CharacterVotes>?,
      top5Characters: freezed == top5Characters
          ? _value.top5Characters
          : top5Characters // ignore: cast_nullable_to_non_nullable
              as List<Top5Characters>?,
      shiftVotes: freezed == shiftVotes
          ? _value.shiftVotes
          : shiftVotes // ignore: cast_nullable_to_non_nullable
              as List<ShiftVotes>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardDataDetailsImplCopyWith<$Res>
    implements $DashboardDataDetailsCopyWith<$Res> {
  factory _$$DashboardDataDetailsImplCopyWith(_$DashboardDataDetailsImpl value,
          $Res Function(_$DashboardDataDetailsImpl) then) =
      __$$DashboardDataDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DailyVotes>? dailyvotes,
      List<CharacterVotes>? characterVotes,
      List<Top5Characters>? top5Characters,
      List<ShiftVotes>? shiftVotes});
}

/// @nodoc
class __$$DashboardDataDetailsImplCopyWithImpl<$Res>
    extends _$DashboardDataDetailsCopyWithImpl<$Res, _$DashboardDataDetailsImpl>
    implements _$$DashboardDataDetailsImplCopyWith<$Res> {
  __$$DashboardDataDetailsImplCopyWithImpl(_$DashboardDataDetailsImpl _value,
      $Res Function(_$DashboardDataDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyvotes = freezed,
    Object? characterVotes = freezed,
    Object? top5Characters = freezed,
    Object? shiftVotes = freezed,
  }) {
    return _then(_$DashboardDataDetailsImpl(
      dailyvotes: freezed == dailyvotes
          ? _value._dailyvotes
          : dailyvotes // ignore: cast_nullable_to_non_nullable
              as List<DailyVotes>?,
      characterVotes: freezed == characterVotes
          ? _value._characterVotes
          : characterVotes // ignore: cast_nullable_to_non_nullable
              as List<CharacterVotes>?,
      top5Characters: freezed == top5Characters
          ? _value._top5Characters
          : top5Characters // ignore: cast_nullable_to_non_nullable
              as List<Top5Characters>?,
      shiftVotes: freezed == shiftVotes
          ? _value._shiftVotes
          : shiftVotes // ignore: cast_nullable_to_non_nullable
              as List<ShiftVotes>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataDetailsImpl implements _DashboardDataDetails {
  const _$DashboardDataDetailsImpl(
      {final List<DailyVotes>? dailyvotes,
      final List<CharacterVotes>? characterVotes,
      final List<Top5Characters>? top5Characters,
      final List<ShiftVotes>? shiftVotes})
      : _dailyvotes = dailyvotes,
        _characterVotes = characterVotes,
        _top5Characters = top5Characters,
        _shiftVotes = shiftVotes;

  factory _$DashboardDataDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataDetailsImplFromJson(json);

  final List<DailyVotes>? _dailyvotes;
  @override
  List<DailyVotes>? get dailyvotes {
    final value = _dailyvotes;
    if (value == null) return null;
    if (_dailyvotes is EqualUnmodifiableListView) return _dailyvotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CharacterVotes>? _characterVotes;
  @override
  List<CharacterVotes>? get characterVotes {
    final value = _characterVotes;
    if (value == null) return null;
    if (_characterVotes is EqualUnmodifiableListView) return _characterVotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Top5Characters>? _top5Characters;
  @override
  List<Top5Characters>? get top5Characters {
    final value = _top5Characters;
    if (value == null) return null;
    if (_top5Characters is EqualUnmodifiableListView) return _top5Characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShiftVotes>? _shiftVotes;
  @override
  List<ShiftVotes>? get shiftVotes {
    final value = _shiftVotes;
    if (value == null) return null;
    if (_shiftVotes is EqualUnmodifiableListView) return _shiftVotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardDataDetails(dailyvotes: $dailyvotes, characterVotes: $characterVotes, top5Characters: $top5Characters, shiftVotes: $shiftVotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._dailyvotes, _dailyvotes) &&
            const DeepCollectionEquality()
                .equals(other._characterVotes, _characterVotes) &&
            const DeepCollectionEquality()
                .equals(other._top5Characters, _top5Characters) &&
            const DeepCollectionEquality()
                .equals(other._shiftVotes, _shiftVotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyvotes),
      const DeepCollectionEquality().hash(_characterVotes),
      const DeepCollectionEquality().hash(_top5Characters),
      const DeepCollectionEquality().hash(_shiftVotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataDetailsImplCopyWith<_$DashboardDataDetailsImpl>
      get copyWith =>
          __$$DashboardDataDetailsImplCopyWithImpl<_$DashboardDataDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataDetailsImplToJson(
      this,
    );
  }
}

abstract class _DashboardDataDetails implements DashboardDataDetails {
  const factory _DashboardDataDetails(
      {final List<DailyVotes>? dailyvotes,
      final List<CharacterVotes>? characterVotes,
      final List<Top5Characters>? top5Characters,
      final List<ShiftVotes>? shiftVotes}) = _$DashboardDataDetailsImpl;

  factory _DashboardDataDetails.fromJson(Map<String, dynamic> json) =
      _$DashboardDataDetailsImpl.fromJson;

  @override
  List<DailyVotes>? get dailyvotes;
  @override
  List<CharacterVotes>? get characterVotes;
  @override
  List<Top5Characters>? get top5Characters;
  @override
  List<ShiftVotes>? get shiftVotes;
  @override
  @JsonKey(ignore: true)
  _$$DashboardDataDetailsImplCopyWith<_$DashboardDataDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DailyVotes _$DailyVotesFromJson(Map<String, dynamic> json) {
  return _DailyVotes.fromJson(json);
}

/// @nodoc
mixin _$DailyVotes {
  int? get day => throw _privateConstructorUsedError;
  int? get votes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyVotesCopyWith<DailyVotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyVotesCopyWith<$Res> {
  factory $DailyVotesCopyWith(
          DailyVotes value, $Res Function(DailyVotes) then) =
      _$DailyVotesCopyWithImpl<$Res, DailyVotes>;
  @useResult
  $Res call({int? day, int? votes});
}

/// @nodoc
class _$DailyVotesCopyWithImpl<$Res, $Val extends DailyVotes>
    implements $DailyVotesCopyWith<$Res> {
  _$DailyVotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? votes = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyVotesImplCopyWith<$Res>
    implements $DailyVotesCopyWith<$Res> {
  factory _$$DailyVotesImplCopyWith(
          _$DailyVotesImpl value, $Res Function(_$DailyVotesImpl) then) =
      __$$DailyVotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? day, int? votes});
}

/// @nodoc
class __$$DailyVotesImplCopyWithImpl<$Res>
    extends _$DailyVotesCopyWithImpl<$Res, _$DailyVotesImpl>
    implements _$$DailyVotesImplCopyWith<$Res> {
  __$$DailyVotesImplCopyWithImpl(
      _$DailyVotesImpl _value, $Res Function(_$DailyVotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? votes = freezed,
  }) {
    return _then(_$DailyVotesImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyVotesImpl implements _DailyVotes {
  const _$DailyVotesImpl({this.day, this.votes});

  factory _$DailyVotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyVotesImplFromJson(json);

  @override
  final int? day;
  @override
  final int? votes;

  @override
  String toString() {
    return 'DailyVotes(day: $day, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyVotesImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.votes, votes) || other.votes == votes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, votes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyVotesImplCopyWith<_$DailyVotesImpl> get copyWith =>
      __$$DailyVotesImplCopyWithImpl<_$DailyVotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyVotesImplToJson(
      this,
    );
  }
}

abstract class _DailyVotes implements DailyVotes {
  const factory _DailyVotes({final int? day, final int? votes}) =
      _$DailyVotesImpl;

  factory _DailyVotes.fromJson(Map<String, dynamic> json) =
      _$DailyVotesImpl.fromJson;

  @override
  int? get day;
  @override
  int? get votes;
  @override
  @JsonKey(ignore: true)
  _$$DailyVotesImplCopyWith<_$DailyVotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterVotes _$CharacterVotesFromJson(Map<String, dynamic> json) {
  return _CharacterVotes.fromJson(json);
}

/// @nodoc
mixin _$CharacterVotes {
  String? get character => throw _privateConstructorUsedError;
  int? get votes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterVotesCopyWith<CharacterVotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterVotesCopyWith<$Res> {
  factory $CharacterVotesCopyWith(
          CharacterVotes value, $Res Function(CharacterVotes) then) =
      _$CharacterVotesCopyWithImpl<$Res, CharacterVotes>;
  @useResult
  $Res call({String? character, int? votes});
}

/// @nodoc
class _$CharacterVotesCopyWithImpl<$Res, $Val extends CharacterVotes>
    implements $CharacterVotesCopyWith<$Res> {
  _$CharacterVotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? votes = freezed,
  }) {
    return _then(_value.copyWith(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterVotesImplCopyWith<$Res>
    implements $CharacterVotesCopyWith<$Res> {
  factory _$$CharacterVotesImplCopyWith(_$CharacterVotesImpl value,
          $Res Function(_$CharacterVotesImpl) then) =
      __$$CharacterVotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? character, int? votes});
}

/// @nodoc
class __$$CharacterVotesImplCopyWithImpl<$Res>
    extends _$CharacterVotesCopyWithImpl<$Res, _$CharacterVotesImpl>
    implements _$$CharacterVotesImplCopyWith<$Res> {
  __$$CharacterVotesImplCopyWithImpl(
      _$CharacterVotesImpl _value, $Res Function(_$CharacterVotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? votes = freezed,
  }) {
    return _then(_$CharacterVotesImpl(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterVotesImpl implements _CharacterVotes {
  const _$CharacterVotesImpl({this.character, this.votes});

  factory _$CharacterVotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterVotesImplFromJson(json);

  @override
  final String? character;
  @override
  final int? votes;

  @override
  String toString() {
    return 'CharacterVotes(character: $character, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterVotesImpl &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.votes, votes) || other.votes == votes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, character, votes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterVotesImplCopyWith<_$CharacterVotesImpl> get copyWith =>
      __$$CharacterVotesImplCopyWithImpl<_$CharacterVotesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterVotesImplToJson(
      this,
    );
  }
}

abstract class _CharacterVotes implements CharacterVotes {
  const factory _CharacterVotes({final String? character, final int? votes}) =
      _$CharacterVotesImpl;

  factory _CharacterVotes.fromJson(Map<String, dynamic> json) =
      _$CharacterVotesImpl.fromJson;

  @override
  String? get character;
  @override
  int? get votes;
  @override
  @JsonKey(ignore: true)
  _$$CharacterVotesImplCopyWith<_$CharacterVotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Top5Characters _$Top5CharactersFromJson(Map<String, dynamic> json) {
  return _Top5Characters.fromJson(json);
}

/// @nodoc
mixin _$Top5Characters {
  String? get character => throw _privateConstructorUsedError;
  int? get votes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Top5CharactersCopyWith<Top5Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Top5CharactersCopyWith<$Res> {
  factory $Top5CharactersCopyWith(
          Top5Characters value, $Res Function(Top5Characters) then) =
      _$Top5CharactersCopyWithImpl<$Res, Top5Characters>;
  @useResult
  $Res call({String? character, int? votes});
}

/// @nodoc
class _$Top5CharactersCopyWithImpl<$Res, $Val extends Top5Characters>
    implements $Top5CharactersCopyWith<$Res> {
  _$Top5CharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? votes = freezed,
  }) {
    return _then(_value.copyWith(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Top5CharactersImplCopyWith<$Res>
    implements $Top5CharactersCopyWith<$Res> {
  factory _$$Top5CharactersImplCopyWith(_$Top5CharactersImpl value,
          $Res Function(_$Top5CharactersImpl) then) =
      __$$Top5CharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? character, int? votes});
}

/// @nodoc
class __$$Top5CharactersImplCopyWithImpl<$Res>
    extends _$Top5CharactersCopyWithImpl<$Res, _$Top5CharactersImpl>
    implements _$$Top5CharactersImplCopyWith<$Res> {
  __$$Top5CharactersImplCopyWithImpl(
      _$Top5CharactersImpl _value, $Res Function(_$Top5CharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? votes = freezed,
  }) {
    return _then(_$Top5CharactersImpl(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Top5CharactersImpl implements _Top5Characters {
  const _$Top5CharactersImpl({this.character, this.votes});

  factory _$Top5CharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$Top5CharactersImplFromJson(json);

  @override
  final String? character;
  @override
  final int? votes;

  @override
  String toString() {
    return 'Top5Characters(character: $character, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Top5CharactersImpl &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.votes, votes) || other.votes == votes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, character, votes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Top5CharactersImplCopyWith<_$Top5CharactersImpl> get copyWith =>
      __$$Top5CharactersImplCopyWithImpl<_$Top5CharactersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Top5CharactersImplToJson(
      this,
    );
  }
}

abstract class _Top5Characters implements Top5Characters {
  const factory _Top5Characters({final String? character, final int? votes}) =
      _$Top5CharactersImpl;

  factory _Top5Characters.fromJson(Map<String, dynamic> json) =
      _$Top5CharactersImpl.fromJson;

  @override
  String? get character;
  @override
  int? get votes;
  @override
  @JsonKey(ignore: true)
  _$$Top5CharactersImplCopyWith<_$Top5CharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftVotes _$ShiftVotesFromJson(Map<String, dynamic> json) {
  return _ShiftVotes.fromJson(json);
}

/// @nodoc
mixin _$ShiftVotes {
  String? get shift => throw _privateConstructorUsedError;
  List<CharacterVotes>? get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftVotesCopyWith<ShiftVotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftVotesCopyWith<$Res> {
  factory $ShiftVotesCopyWith(
          ShiftVotes value, $Res Function(ShiftVotes) then) =
      _$ShiftVotesCopyWithImpl<$Res, ShiftVotes>;
  @useResult
  $Res call({String? shift, List<CharacterVotes>? characters});
}

/// @nodoc
class _$ShiftVotesCopyWithImpl<$Res, $Val extends ShiftVotes>
    implements $ShiftVotesCopyWith<$Res> {
  _$ShiftVotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shift = freezed,
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterVotes>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftVotesImplCopyWith<$Res>
    implements $ShiftVotesCopyWith<$Res> {
  factory _$$ShiftVotesImplCopyWith(
          _$ShiftVotesImpl value, $Res Function(_$ShiftVotesImpl) then) =
      __$$ShiftVotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? shift, List<CharacterVotes>? characters});
}

/// @nodoc
class __$$ShiftVotesImplCopyWithImpl<$Res>
    extends _$ShiftVotesCopyWithImpl<$Res, _$ShiftVotesImpl>
    implements _$$ShiftVotesImplCopyWith<$Res> {
  __$$ShiftVotesImplCopyWithImpl(
      _$ShiftVotesImpl _value, $Res Function(_$ShiftVotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shift = freezed,
    Object? characters = freezed,
  }) {
    return _then(_$ShiftVotesImpl(
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterVotes>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftVotesImpl implements _ShiftVotes {
  const _$ShiftVotesImpl({this.shift, final List<CharacterVotes>? characters})
      : _characters = characters;

  factory _$ShiftVotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftVotesImplFromJson(json);

  @override
  final String? shift;
  final List<CharacterVotes>? _characters;
  @override
  List<CharacterVotes>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShiftVotes(shift: $shift, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftVotesImpl &&
            (identical(other.shift, shift) || other.shift == shift) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, shift, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftVotesImplCopyWith<_$ShiftVotesImpl> get copyWith =>
      __$$ShiftVotesImplCopyWithImpl<_$ShiftVotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftVotesImplToJson(
      this,
    );
  }
}

abstract class _ShiftVotes implements ShiftVotes {
  const factory _ShiftVotes(
      {final String? shift,
      final List<CharacterVotes>? characters}) = _$ShiftVotesImpl;

  factory _ShiftVotes.fromJson(Map<String, dynamic> json) =
      _$ShiftVotesImpl.fromJson;

  @override
  String? get shift;
  @override
  List<CharacterVotes>? get characters;
  @override
  @JsonKey(ignore: true)
  _$$ShiftVotesImplCopyWith<_$ShiftVotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
