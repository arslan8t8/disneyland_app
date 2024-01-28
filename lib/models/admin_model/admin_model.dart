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
