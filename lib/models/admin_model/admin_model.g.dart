// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminModelImpl _$$AdminModelImplFromJson(Map<String, dynamic> json) =>
    _$AdminModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AdminData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdminModelImplToJson(_$AdminModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AdminDataImpl _$$AdminDataImplFromJson(Map<String, dynamic> json) =>
    _$AdminDataImpl(
      adminId: json['adminId'] as int,
      adminName: json['adminName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      profileImage: json['profileImage'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      signUpDate: json['signUpDate'] as String,
    );

Map<String, dynamic> _$$AdminDataImplToJson(_$AdminDataImpl instance) =>
    <String, dynamic>{
      'adminId': instance.adminId,
      'adminName': instance.adminName,
      'email': instance.email,
      'phone': instance.phone,
      'profileImage': instance.profileImage,
      'isEmailVerified': instance.isEmailVerified,
      'signUpDate': instance.signUpDate,
    };
