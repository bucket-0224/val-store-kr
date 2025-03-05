import 'package:json_annotation/json_annotation.dart';

part 'storefront_request.g.dart';

@JsonSerializable()
class StorefrontRequest {

  StorefrontRequest();

  factory StorefrontRequest.fromJson(Map<String, dynamic> json) => _$StorefrontRequestFromJson(json);
  Map<String, dynamic> toJson() => _$StorefrontRequestToJson(this);
}