import 'package:json_annotation/json_annotation.dart';

part 'entitlement_response.g.dart';

@JsonSerializable()
class Entitlement {
  @JsonKey(name: 'entitlements_token')
  final String entitlementToken;

  Entitlement({required this.entitlementToken});

  factory Entitlement.fromJson(Map<String, dynamic> json) => _$EntitlementFromJson(json);
  Map<String, dynamic> toJson() => _$EntitlementToJson(this);
}