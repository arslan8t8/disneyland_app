import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_upload_model.freezed.dart';
part 'image_upload_model.g.dart';

@freezed
abstract class ImageUploadModel with _$ImageUploadModel {
  factory ImageUploadModel({
    required int status,
    required String message,
    required ImageUploadData data,
  }) = _ImageUploadModel;

  factory ImageUploadModel.fromJson(Map<String, dynamic> json) => _$ImageUploadModelFromJson(json);
}

@freezed
abstract class ImageUploadData with _$ImageUploadData {
  factory ImageUploadData({
    required String? image_url,
  }) = _ImageUploadData;

  factory ImageUploadData.fromJson(Map<String, dynamic> json) => _$ImageUploadDataFromJson(json);
}
