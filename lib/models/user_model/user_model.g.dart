// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['userId'] as int,
      userName: json['userName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      profileImage: json['profileImage'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      signUpDate: json['signUpDate'] as String,
      voteCasted: json['voteCasted'] as int,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'profileImage': instance.profileImage,
      'isEmailVerified': instance.isEmailVerified,
      'signUpDate': instance.signUpDate,
      'voteCasted': instance.voteCasted,
    };

_$AllUsersModelImpl _$$AllUsersModelImplFromJson(Map<String, dynamic> json) =>
    _$AllUsersModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllUsersModelImplToJson(_$AllUsersModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$RegisterUserModelImpl _$$RegisterUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserModelImpl(
      userId: json['userId'] as int,
      userName: json['userName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      profileImage: json['profileImage'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      signUpDate: json['signUpDate'] as String,
      voteCasted: json['voteCasted'] as int,
    );

Map<String, dynamic> _$$RegisterUserModelImplToJson(
        _$RegisterUserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'profileImage': instance.profileImage,
      'isEmailVerified': instance.isEmailVerified,
      'signUpDate': instance.signUpDate,
      'voteCasted': instance.voteCasted,
    };
