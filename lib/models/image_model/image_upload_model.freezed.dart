// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_upload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUploadModel _$ImageUploadModelFromJson(Map<String, dynamic> json) {
  return _ImageUploadModel.fromJson(json);
}

/// @nodoc
mixin _$ImageUploadModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ImageUploadData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUploadModelCopyWith<ImageUploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadModelCopyWith<$Res> {
  factory $ImageUploadModelCopyWith(
          ImageUploadModel value, $Res Function(ImageUploadModel) then) =
      _$ImageUploadModelCopyWithImpl<$Res, ImageUploadModel>;
  @useResult
  $Res call({int status, String message, ImageUploadData data});

  $ImageUploadDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ImageUploadModelCopyWithImpl<$Res, $Val extends ImageUploadModel>
    implements $ImageUploadModelCopyWith<$Res> {
  _$ImageUploadModelCopyWithImpl(this._value, this._then);

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
              as ImageUploadData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUploadDataCopyWith<$Res> get data {
    return $ImageUploadDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageUploadModelImplCopyWith<$Res>
    implements $ImageUploadModelCopyWith<$Res> {
  factory _$$ImageUploadModelImplCopyWith(_$ImageUploadModelImpl value,
          $Res Function(_$ImageUploadModelImpl) then) =
      __$$ImageUploadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, ImageUploadData data});

  @override
  $ImageUploadDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ImageUploadModelImplCopyWithImpl<$Res>
    extends _$ImageUploadModelCopyWithImpl<$Res, _$ImageUploadModelImpl>
    implements _$$ImageUploadModelImplCopyWith<$Res> {
  __$$ImageUploadModelImplCopyWithImpl(_$ImageUploadModelImpl _value,
      $Res Function(_$ImageUploadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ImageUploadModelImpl(
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
              as ImageUploadData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUploadModelImpl implements _ImageUploadModel {
  _$ImageUploadModelImpl(
      {required this.status, required this.message, required this.data});

  factory _$ImageUploadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUploadModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final ImageUploadData data;

  @override
  String toString() {
    return 'ImageUploadModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUploadModelImpl &&
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
  _$$ImageUploadModelImplCopyWith<_$ImageUploadModelImpl> get copyWith =>
      __$$ImageUploadModelImplCopyWithImpl<_$ImageUploadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUploadModelImplToJson(
      this,
    );
  }
}

abstract class _ImageUploadModel implements ImageUploadModel {
  factory _ImageUploadModel(
      {required final int status,
      required final String message,
      required final ImageUploadData data}) = _$ImageUploadModelImpl;

  factory _ImageUploadModel.fromJson(Map<String, dynamic> json) =
      _$ImageUploadModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  ImageUploadData get data;
  @override
  @JsonKey(ignore: true)
  _$$ImageUploadModelImplCopyWith<_$ImageUploadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageUploadData _$ImageUploadDataFromJson(Map<String, dynamic> json) {
  return _ImageUploadData.fromJson(json);
}

/// @nodoc
mixin _$ImageUploadData {
  String? get image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUploadDataCopyWith<ImageUploadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadDataCopyWith<$Res> {
  factory $ImageUploadDataCopyWith(
          ImageUploadData value, $Res Function(ImageUploadData) then) =
      _$ImageUploadDataCopyWithImpl<$Res, ImageUploadData>;
  @useResult
  $Res call({String? image_url});
}

/// @nodoc
class _$ImageUploadDataCopyWithImpl<$Res, $Val extends ImageUploadData>
    implements $ImageUploadDataCopyWith<$Res> {
  _$ImageUploadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUploadDataImplCopyWith<$Res>
    implements $ImageUploadDataCopyWith<$Res> {
  factory _$$ImageUploadDataImplCopyWith(_$ImageUploadDataImpl value,
          $Res Function(_$ImageUploadDataImpl) then) =
      __$$ImageUploadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image_url});
}

/// @nodoc
class __$$ImageUploadDataImplCopyWithImpl<$Res>
    extends _$ImageUploadDataCopyWithImpl<$Res, _$ImageUploadDataImpl>
    implements _$$ImageUploadDataImplCopyWith<$Res> {
  __$$ImageUploadDataImplCopyWithImpl(
      _$ImageUploadDataImpl _value, $Res Function(_$ImageUploadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image_url = freezed,
  }) {
    return _then(_$ImageUploadDataImpl(
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUploadDataImpl implements _ImageUploadData {
  _$ImageUploadDataImpl({required this.image_url});

  factory _$ImageUploadDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUploadDataImplFromJson(json);

  @override
  final String? image_url;

  @override
  String toString() {
    return 'ImageUploadData(image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUploadDataImpl &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUploadDataImplCopyWith<_$ImageUploadDataImpl> get copyWith =>
      __$$ImageUploadDataImplCopyWithImpl<_$ImageUploadDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUploadDataImplToJson(
      this,
    );
  }
}

abstract class _ImageUploadData implements ImageUploadData {
  factory _ImageUploadData({required final String? image_url}) =
      _$ImageUploadDataImpl;

  factory _ImageUploadData.fromJson(Map<String, dynamic> json) =
      _$ImageUploadDataImpl.fromJson;

  @override
  String? get image_url;
  @override
  @JsonKey(ignore: true)
  _$$ImageUploadDataImplCopyWith<_$ImageUploadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
