import 'package:json_annotation/json_annotation.dart';

part 'wallet_response.g.dart';

@JsonSerializable()
class WalletResponse {
  @JsonKey(name : "Balances")
  final Map<String, int>? balances;
  @JsonKey(name : "CurrencyLimits")
  final Map<String, CurrencyLimit>? currencyLimits;

  WalletResponse({
    required this.balances,
    required this.currencyLimits,
  });

  factory WalletResponse.fromJson(Map<String, dynamic> json) => _$WalletResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WalletResponseToJson(this);
}

@JsonSerializable()
class CurrencyLimit {
  @JsonKey(name : "Limits")
  final Map<String, Limit>? limits;

  CurrencyLimit({required this.limits});

  factory CurrencyLimit.fromJson(Map<String, dynamic> json) => _$CurrencyLimitFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyLimitToJson(this);
}

@JsonSerializable()
class Limit {
  final int amount;
  final String limitType;

  Limit({required this.amount, required this.limitType});

  factory Limit.fromJson(Map<String, dynamic> json) => _$LimitFromJson(json);
  Map<String, dynamic> toJson() => _$LimitToJson(this);
}
