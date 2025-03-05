import 'package:json_annotation/json_annotation.dart';

part 'player_info_response.g.dart';

@JsonSerializable()
class PlayerInfoResponse {
  final String? country;
  final String? sub;
  @JsonKey(name: "email_verified")
  final bool? emailVerified;
  @JsonKey(name: "player_plocale")
  final dynamic playerPlocale;
  @JsonKey(name: "country_at")
  final int? countryAt;
  final PasswordInfo? pw;
  @JsonKey(name: "phone_number_verified")
  final bool? phoneNumberVerified;
  @JsonKey(name: "account_verified")
  final bool? accountVerified;
  final dynamic ppid;
  @JsonKey(name : "player_locale")
  final String? playerLocale;
  final AccountInfo? acct;
  final int? age;
  final String? jti;
  final Map<String, String>? affinity;

  PlayerInfoResponse({
    required this.country,
    required this.sub,
    required this.emailVerified,
    this.playerPlocale,
    this.countryAt,
    required this.pw,
    required this.phoneNumberVerified,
    required this.accountVerified,
    this.ppid,
    this.playerLocale,
    required this.acct,
    required this.age,
    required this.jti,
    required this.affinity,
  });

  factory PlayerInfoResponse.fromJson(Map<String, dynamic> json) => _$PlayerInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerInfoResponseToJson(this);
}

@JsonSerializable()
class PasswordInfo {
  final int? cngAt;
  final bool? reset;
  @JsonKey(name : "must_reset")
  final bool? mustReset;

  PasswordInfo({required this.cngAt, required this.reset, required this.mustReset});

  factory PasswordInfo.fromJson(Map<String, dynamic> json) => _$PasswordInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PasswordInfoToJson(this);
}

@JsonSerializable()
class AccountInfo {
  final int? type;
  final String? state;
  final bool? adm;
  @JsonKey(name : "game_name")
  final String? gameName;
  @JsonKey(name : "tag_line")
  final String? tagLine;
  @JsonKey(name : "created_at")
  final int? createdAt;

  AccountInfo({
    required this.type,
    required this.state,
    required this.adm,
    required this.gameName,
    required this.tagLine,
    required this.createdAt,
  });

  factory AccountInfo.fromJson(Map<String, dynamic> json) => _$AccountInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AccountInfoToJson(this);
}
