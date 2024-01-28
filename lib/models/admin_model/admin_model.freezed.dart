// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) {
  return _AdminModel.fromJson(json);
}

/// @nodoc
mixin _$AdminModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<AdminData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminModelCopyWith<AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminModelCopyWith<$Res> {
  factory $AdminModelCopyWith(
          AdminModel value, $Res Function(AdminModel) then) =
      _$AdminModelCopyWithImpl<$Res, AdminModel>;
  @useResult
  $Res call({int status, String message, List<AdminData> data});
}

/// @nodoc
class _$AdminModelCopyWithImpl<$Res, $Val extends AdminModel>
    implements $AdminModelCopyWith<$Res> {
  _$AdminModelCopyWithImpl(this._value, this._then);

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
              as List<AdminData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminModelImplCopyWith<$Res>
    implements $AdminModelCopyWith<$Res> {
  factory _$$AdminModelImplCopyWith(
          _$AdminModelImpl value, $Res Function(_$AdminModelImpl) then) =
      __$$AdminModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, List<AdminData> data});
}

/// @nodoc
class __$$AdminModelImplCopyWithImpl<$Res>
    extends _$AdminModelCopyWithImpl<$Res, _$AdminModelImpl>
    implements _$$AdminModelImplCopyWith<$Res> {
  __$$AdminModelImplCopyWithImpl(
      _$AdminModelImpl _value, $Res Function(_$AdminModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AdminModelImpl(
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
              as List<AdminData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminModelImpl implements _AdminModel {
  _$AdminModelImpl(
      {required this.status,
      required this.message,
      required final List<AdminData> data})
      : _data = data;

  factory _$AdminModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  final List<AdminData> _data;
  @override
  List<AdminData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AdminModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminModelImpl &&
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
  _$$AdminModelImplCopyWith<_$AdminModelImpl> get copyWith =>
      __$$AdminModelImplCopyWithImpl<_$AdminModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminModelImplToJson(
      this,
    );
  }
}

abstract class _AdminModel implements AdminModel {
  factory _AdminModel(
      {required final int status,
      required final String message,
      required final List<AdminData> data}) = _$AdminModelImpl;

  factory _AdminModel.fromJson(Map<String, dynamic> json) =
      _$AdminModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  List<AdminData> get data;
  @override
  @JsonKey(ignore: true)
  _$$AdminModelImplCopyWith<_$AdminModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminData _$AdminDataFromJson(Map<String, dynamic> json) {
  return _AdminData.fromJson(json);
}

/// @nodoc
mixin _$AdminData {
  int get adminId => throw _privateConstructorUsedError;
  String get adminName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  String get signUpDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminDataCopyWith<AdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDataCopyWith<$Res> {
  factory $AdminDataCopyWith(AdminData value, $Res Function(AdminData) then) =
      _$AdminDataCopyWithImpl<$Res, AdminData>;
  @useResult
  $Res call(
      {int adminId,
      String adminName,
      String email,
      String phone,
      String profileImage,
      bool isEmailVerified,
      String signUpDate});
}

/// @nodoc
class _$AdminDataCopyWithImpl<$Res, $Val extends AdminData>
    implements $AdminDataCopyWith<$Res> {
  _$AdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminId = null,
    Object? adminName = null,
    Object? email = null,
    Object? phone = null,
    Object? profileImage = null,
    Object? isEmailVerified = null,
    Object? signUpDate = null,
  }) {
    return _then(_value.copyWith(
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpDate: null == signUpDate
          ? _value.signUpDate
          : signUpDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminDataImplCopyWith<$Res>
    implements $AdminDataCopyWith<$Res> {
  factory _$$AdminDataImplCopyWith(
          _$AdminDataImpl value, $Res Function(_$AdminDataImpl) then) =
      __$$AdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int adminId,
      String adminName,
      String email,
      String phone,
      String profileImage,
      bool isEmailVerified,
      String signUpDate});
}

/// @nodoc
class __$$AdminDataImplCopyWithImpl<$Res>
    extends _$AdminDataCopyWithImpl<$Res, _$AdminDataImpl>
    implements _$$AdminDataImplCopyWith<$Res> {
  __$$AdminDataImplCopyWithImpl(
      _$AdminDataImpl _value, $Res Function(_$AdminDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminId = null,
    Object? adminName = null,
    Object? email = null,
    Object? phone = null,
    Object? profileImage = null,
    Object? isEmailVerified = null,
    Object? signUpDate = null,
  }) {
    return _then(_$AdminDataImpl(
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpDate: null == signUpDate
          ? _value.signUpDate
          : signUpDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminDataImpl implements _AdminData {
  _$AdminDataImpl(
      {required this.adminId,
      required this.adminName,
      required this.email,
      required this.phone,
      required this.profileImage,
      required this.isEmailVerified,
      required this.signUpDate});

  factory _$AdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminDataImplFromJson(json);

  @override
  final int adminId;
  @override
  final String adminName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String profileImage;
  @override
  final bool isEmailVerified;
  @override
  final String signUpDate;

  @override
  String toString() {
    return 'AdminData(adminId: $adminId, adminName: $adminName, email: $email, phone: $phone, profileImage: $profileImage, isEmailVerified: $isEmailVerified, signUpDate: $signUpDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDataImpl &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.signUpDate, signUpDate) ||
                other.signUpDate == signUpDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adminId, adminName, email, phone,
      profileImage, isEmailVerified, signUpDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDataImplCopyWith<_$AdminDataImpl> get copyWith =>
      __$$AdminDataImplCopyWithImpl<_$AdminDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminDataImplToJson(
      this,
    );
  }
}

abstract class _AdminData implements AdminData {
  factory _AdminData(
      {required final int adminId,
      required final String adminName,
      required final String email,
      required final String phone,
      required final String profileImage,
      required final bool isEmailVerified,
      required final String signUpDate}) = _$AdminDataImpl;

  factory _AdminData.fromJson(Map<String, dynamic> json) =
      _$AdminDataImpl.fromJson;

  @override
  int get adminId;
  @override
  String get adminName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get profileImage;
  @override
  bool get isEmailVerified;
  @override
  String get signUpDate;
  @override
  @JsonKey(ignore: true)
  _$$AdminDataImplCopyWith<_$AdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
