// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminSignupModelImpl _$$AdminSignupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminSignupModelImpl(
      adminId: json['adminId'] as int,
      adminName: json['adminName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      profileImage: json['profileImage'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      signUpDate: json['signUpDate'] as String,
    );

Map<String, dynamic> _$$AdminSignupModelImplToJson(
        _$AdminSignupModelImpl instance) =>
    <String, dynamic>{
      'adminId': instance.adminId,
      'adminName': instance.adminName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'profileImage': instance.profileImage,
      'isEmailVerified': instance.isEmailVerified,
      'signUpDate': instance.signUpDate,
    };
