// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  int get characterId => throw _privateConstructorUsedError;
  String get characterName => throw _privateConstructorUsedError;
  int get totalVotes => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call(
      {int characterId,
      String characterName,
      int totalVotes,
      bool isActive,
      String? description,
      String imageUrl});
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
    Object? characterName = null,
    Object? totalVotes = null,
    Object? isActive = null,
    Object? description = freezed,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterModelImplCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$CharacterModelImplCopyWith(_$CharacterModelImpl value,
          $Res Function(_$CharacterModelImpl) then) =
      __$$CharacterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int characterId,
      String characterName,
      int totalVotes,
      bool isActive,
      String? description,
      String imageUrl});
}

/// @nodoc
class __$$CharacterModelImplCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$CharacterModelImpl>
    implements _$$CharacterModelImplCopyWith<$Res> {
  __$$CharacterModelImplCopyWithImpl(
      _$CharacterModelImpl _value, $Res Function(_$CharacterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
    Object? characterName = null,
    Object? totalVotes = null,
    Object? isActive = null,
    Object? description = freezed,
    Object? imageUrl = null,
  }) {
    return _then(_$CharacterModelImpl(
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterModelImpl implements _CharacterModel {
  _$CharacterModelImpl(
      {required this.characterId,
      required this.characterName,
      required this.totalVotes,
      required this.isActive,
      this.description,
      required this.imageUrl});

  factory _$CharacterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterModelImplFromJson(json);

  @override
  final int characterId;
  @override
  final String characterName;
  @override
  final int totalVotes;
  @override
  final bool isActive;
  @override
  final String? description;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CharacterModel(characterId: $characterId, characterName: $characterName, totalVotes: $totalVotes, isActive: $isActive, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterModelImpl &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characterId, characterName,
      totalVotes, isActive, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      __$$CharacterModelImplCopyWithImpl<_$CharacterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterModel implements CharacterModel {
  factory _CharacterModel(
      {required final int characterId,
      required final String characterName,
      required final int totalVotes,
      required final bool isActive,
      final String? description,
      required final String imageUrl}) = _$CharacterModelImpl;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$CharacterModelImpl.fromJson;

  @override
  int get characterId;
  @override
  String get characterName;
  @override
  int get totalVotes;
  @override
  bool get isActive;
  @override
  String? get description;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterData _$CharacterDataFromJson(Map<String, dynamic> json) {
  return _CharacterData.fromJson(json);
}

/// @nodoc
mixin _$CharacterData {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CharacterModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDataCopyWith<CharacterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDataCopyWith<$Res> {
  factory $CharacterDataCopyWith(
          CharacterData value, $Res Function(CharacterData) then) =
      _$CharacterDataCopyWithImpl<$Res, CharacterData>;
  @useResult
  $Res call({int status, String message, List<CharacterModel> data});
}

/// @nodoc
class _$CharacterDataCopyWithImpl<$Res, $Val extends CharacterData>
    implements $CharacterDataCopyWith<$Res> {
  _$CharacterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDataImplCopyWith<$Res>
    implements $CharacterDataCopyWith<$Res> {
  factory _$$CharacterDataImplCopyWith(
          _$CharacterDataImpl value, $Res Function(_$CharacterDataImpl) then) =
      __$$CharacterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, List<CharacterModel> data});
}

/// @nodoc
class __$$CharacterDataImplCopyWithImpl<$Res>
    extends _$CharacterDataCopyWithImpl<$Res, _$CharacterDataImpl>
    implements _$$CharacterDataImplCopyWith<$Res> {
  __$$CharacterDataImplCopyWithImpl(
      _$CharacterDataImpl _value, $Res Function(_$CharacterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CharacterDataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDataImpl implements _CharacterData {
  _$CharacterDataImpl(
      {required this.status,
      required this.message,
      required final List<CharacterModel> data})
      : _data = data;

  factory _$CharacterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDataImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  final List<CharacterModel> _data;
  @override
  List<CharacterModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CharacterData(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDataImplCopyWith<_$CharacterDataImpl> get copyWith =>
      __$$CharacterDataImplCopyWithImpl<_$CharacterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDataImplToJson(
      this,
    );
  }
}

abstract class _CharacterData implements CharacterData {
  factory _CharacterData(
      {required final int status,
      required final String message,
      required final List<CharacterModel> data}) = _$CharacterDataImpl;

  factory _CharacterData.fromJson(Map<String, dynamic> json) =
      _$CharacterDataImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  List<CharacterModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDataImplCopyWith<_$CharacterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
