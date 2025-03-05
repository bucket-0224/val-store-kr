// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerInfoResponse _$PlayerInfoResponseFromJson(Map<String, dynamic> json) =>
    PlayerInfoResponse(
      country: json['country'] as String?,
      sub: json['sub'] as String?,
      emailVerified: json['email_verified'] as bool?,
      playerPlocale: json['player_plocale'],
      countryAt: (json['country_at'] as num?)?.toInt(),
      pw: json['pw'] == null
          ? null
          : PasswordInfo.fromJson(json['pw'] as Map<String, dynamic>),
      phoneNumberVerified: json['phone_number_verified'] as bool?,
      accountVerified: json['account_verified'] as bool?,
      ppid: json['ppid'],
      playerLocale: json['player_locale'] as String?,
      acct: json['acct'] == null
          ? null
          : AccountInfo.fromJson(json['acct'] as Map<String, dynamic>),
      age: (json['age'] as num?)?.toInt(),
      jti: json['jti'] as String?,
      affinity: (json['affinity'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$PlayerInfoResponseToJson(PlayerInfoResponse instance) =>
    <String, dynamic>{
      'country': instance.country,
      'sub': instance.sub,
      'email_verified': instance.emailVerified,
      'player_plocale': instance.playerPlocale,
      'country_at': instance.countryAt,
      'pw': instance.pw,
      'phone_number_verified': instance.phoneNumberVerified,
      'account_verified': instance.accountVerified,
      'ppid': instance.ppid,
      'player_locale': instance.playerLocale,
      'acct': instance.acct,
      'age': instance.age,
      'jti': instance.jti,
      'affinity': instance.affinity,
    };

PasswordInfo _$PasswordInfoFromJson(Map<String, dynamic> json) => PasswordInfo(
      cngAt: (json['cngAt'] as num?)?.toInt(),
      reset: json['reset'] as bool?,
      mustReset: json['must_reset'] as bool?,
    );

Map<String, dynamic> _$PasswordInfoToJson(PasswordInfo instance) =>
    <String, dynamic>{
      'cngAt': instance.cngAt,
      'reset': instance.reset,
      'must_reset': instance.mustReset,
    };

AccountInfo _$AccountInfoFromJson(Map<String, dynamic> json) => AccountInfo(
      type: (json['type'] as num?)?.toInt(),
      state: json['state'] as String?,
      adm: json['adm'] as bool?,
      gameName: json['game_name'] as String?,
      tagLine: json['tag_line'] as String?,
      createdAt: (json['created_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AccountInfoToJson(AccountInfo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'state': instance.state,
      'adm': instance.adm,
      'game_name': instance.gameName,
      'tag_line': instance.tagLine,
      'created_at': instance.createdAt,
    };
