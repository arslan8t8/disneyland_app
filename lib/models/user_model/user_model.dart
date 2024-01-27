import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    required int userId,
    required String userName,
    required String email,
    required String phone,
    required String profileImage,
    required bool isEmailVerified,
    required String signUpDate,
    required int voteCasted,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
abstract class Token with _$Token {
  factory Token({
    required List<UserModel> userList,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  factory UserData({
    required String token,
    required UserModel user,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}

@freezed
abstract class UserInfo with _$UserInfo {
  factory UserInfo({
    required int status,
    required String message,
    required UserData data,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}

//for signUp

@freezed
abstract class RegisterUserModel with _$RegisterUserModel {
  factory RegisterUserModel({
    required int userId,
    required String userName,
    required String email,
    required String phone,
    required String password,
    required String profileImage,
    required bool isEmailVerified,
    required String signUpDate,
    required int voteCasted,
  }) = _RegisterUserModel;

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) => _$RegisterUserModelFromJson(json);
}
