import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_signup_model.freezed.dart';
part 'admin_signup_model.g.dart';

@freezed
abstract class AdminSignupModel with _$AdminSignupModel {
  factory AdminSignupModel({
    required int adminId,
    required String adminName,
    required String email,
    required String phone,
    required String password,
    required String profileImage,
    required bool isEmailVerified,
    required String signUpDate,
  }) = _AdminSignupModel;

  factory AdminSignupModel.fromJson(Map<String, dynamic> json) => _$AdminSignupModelFromJson(json);
}
