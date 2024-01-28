// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminSignupModel _$AdminSignupModelFromJson(Map<String, dynamic> json) {
  return _AdminSignupModel.fromJson(json);
}

/// @nodoc
mixin _$AdminSignupModel {
  int get adminId => throw _privateConstructorUsedError;
  String get adminName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  String get signUpDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminSignupModelCopyWith<AdminSignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSignupModelCopyWith<$Res> {
  factory $AdminSignupModelCopyWith(
          AdminSignupModel value, $Res Function(AdminSignupModel) then) =
      _$AdminSignupModelCopyWithImpl<$Res, AdminSignupModel>;
  @useResult
  $Res call(
      {int adminId,
      String adminName,
      String email,
      String phone,
      String password,
      String profileImage,
      bool isEmailVerified,
      String signUpDate});
}

/// @nodoc
class _$AdminSignupModelCopyWithImpl<$Res, $Val extends AdminSignupModel>
    implements $AdminSignupModelCopyWith<$Res> {
  _$AdminSignupModelCopyWithImpl(this._value, this._then);

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
    Object? password = null,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminSignupModelImplCopyWith<$Res>
    implements $AdminSignupModelCopyWith<$Res> {
  factory _$$AdminSignupModelImplCopyWith(_$AdminSignupModelImpl value,
          $Res Function(_$AdminSignupModelImpl) then) =
      __$$AdminSignupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int adminId,
      String adminName,
      String email,
      String phone,
      String password,
      String profileImage,
      bool isEmailVerified,
      String signUpDate});
}

/// @nodoc
class __$$AdminSignupModelImplCopyWithImpl<$Res>
    extends _$AdminSignupModelCopyWithImpl<$Res, _$AdminSignupModelImpl>
    implements _$$AdminSignupModelImplCopyWith<$Res> {
  __$$AdminSignupModelImplCopyWithImpl(_$AdminSignupModelImpl _value,
      $Res Function(_$AdminSignupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminId = null,
    Object? adminName = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? profileImage = null,
    Object? isEmailVerified = null,
    Object? signUpDate = null,
  }) {
    return _then(_$AdminSignupModelImpl(
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$AdminSignupModelImpl implements _AdminSignupModel {
  _$AdminSignupModelImpl(
      {required this.adminId,
      required this.adminName,
      required this.email,
      required this.phone,
      required this.password,
      required this.profileImage,
      required this.isEmailVerified,
      required this.signUpDate});

  factory _$AdminSignupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminSignupModelImplFromJson(json);

  @override
  final int adminId;
  @override
  final String adminName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String profileImage;
  @override
  final bool isEmailVerified;
  @override
  final String signUpDate;

  @override
  String toString() {
    return 'AdminSignupModel(adminId: $adminId, adminName: $adminName, email: $email, phone: $phone, password: $password, profileImage: $profileImage, isEmailVerified: $isEmailVerified, signUpDate: $signUpDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminSignupModelImpl &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
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
      password, profileImage, isEmailVerified, signUpDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminSignupModelImplCopyWith<_$AdminSignupModelImpl> get copyWith =>
      __$$AdminSignupModelImplCopyWithImpl<_$AdminSignupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminSignupModelImplToJson(
      this,
    );
  }
}

abstract class _AdminSignupModel implements AdminSignupModel {
  factory _AdminSignupModel(
      {required final int adminId,
      required final String adminName,
      required final String email,
      required final String phone,
      required final String password,
      required final String profileImage,
      required final bool isEmailVerified,
      required final String signUpDate}) = _$AdminSignupModelImpl;

  factory _AdminSignupModel.fromJson(Map<String, dynamic> json) =
      _$AdminSignupModelImpl.fromJson;

  @override
  int get adminId;
  @override
  String get adminName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get password;
  @override
  String get profileImage;
  @override
  bool get isEmailVerified;
  @override
  String get signUpDate;
  @override
  @JsonKey(ignore: true)
  _$$AdminSignupModelImplCopyWith<_$AdminSignupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
