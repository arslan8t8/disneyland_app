// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageUploadModelImpl _$$ImageUploadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageUploadModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: ImageUploadData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageUploadModelImplToJson(
        _$ImageUploadModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ImageUploadDataImpl _$$ImageUploadDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageUploadDataImpl(
      image_url: json['image_url'] as String?,
    );

Map<String, dynamic> _$$ImageUploadDataImplToJson(
        _$ImageUploadDataImpl instance) =>
    <String, dynamic>{
      'image_url': instance.image_url,
    };
