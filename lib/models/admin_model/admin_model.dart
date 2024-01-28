import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
abstract class AdminModel with _$AdminModel {
  factory AdminModel({
    required int status,
    required String message,
    required List<AdminData> data,
  }) = _AdminModel;

  factory AdminModel.fromJson(Map<String, dynamic> json) => _$AdminModelFromJson(json);
}

@freezed
abstract class AdminData with _$AdminData {
  factory AdminData({
    required int adminId,
    required String adminName,
    required String email,
    required String phone,
    required String profileImage,
    required bool isEmailVerified,
    required String signUpDate,
  }) = _AdminData;

  factory AdminData.fromJson(Map<String, dynamic> json) => _$AdminDataFromJson(json);
}

@freezed
abstract class AdminLoginModel with _$AdminLoginModel {
  factory AdminLoginModel({
    required AdminData admin,
    required String token,
  }) = _AdminLoginModel;

  factory AdminLoginModel.fromJson(Map<String, dynamic> json) => _$AdminLoginModelFromJson(json);
}

@freezed
abstract class CurrentAdminModel with _$CurrentAdminModel {
  factory CurrentAdminModel({
    required int status,
    required String message,
    required AdminLoginModel data,
  }) = _CurrentAdminModel;

  factory CurrentAdminModel.fromJson(Map<String, dynamic> json) => _$CurrentAdminModelFromJson(json);
}
