// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletResponse _$WalletResponseFromJson(Map<String, dynamic> json) =>
    WalletResponse(
      balances: (json['Balances'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      currencyLimits: (json['CurrencyLimits'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, CurrencyLimit.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$WalletResponseToJson(WalletResponse instance) =>
    <String, dynamic>{
      'Balances': instance.balances,
      'CurrencyLimits': instance.currencyLimits,
    };

CurrencyLimit _$CurrencyLimitFromJson(Map<String, dynamic> json) =>
    CurrencyLimit(
      limits: (json['Limits'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Limit.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CurrencyLimitToJson(CurrencyLimit instance) =>
    <String, dynamic>{
      'Limits': instance.limits,
    };

Limit _$LimitFromJson(Map<String, dynamic> json) => Limit(
      amount: (json['amount'] as num).toInt(),
      limitType: json['limitType'] as String,
    );

Map<String, dynamic> _$LimitToJson(Limit instance) => <String, dynamic>{
      'amount': instance.amount,
      'limitType': instance.limitType,
    };
