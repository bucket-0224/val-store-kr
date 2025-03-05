import 'package:json_annotation/json_annotation.dart';

part 'load_out_response.g.dart';

@JsonSerializable()
class PlayerLoadOutResponse {
  /// Player UUID
  @JsonKey(name: "Subject")
  final String? subject;
  @JsonKey(name: "Version")
  final int? version;
  @JsonKey(name: "Guns")
  final List<Gun>? guns;
  @JsonKey(name: "Sprays")
  final List<Spray>? sprays;
  @JsonKey(name: "Identity")
  final Identity? identity;
  @JsonKey(name: "Incognito")
  final bool? incognito;

  PlayerLoadOutResponse({
    required this.subject,
    required this.version,
    required this.guns,
    required this.sprays,
    required this.identity,
    required this.incognito,
  });

  factory PlayerLoadOutResponse.fromJson(Map<String, dynamic> json) => _$PlayerLoadOutResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerLoadOutResponseToJson(this);
}

@JsonSerializable()
class Gun {
  /// UUID
  @JsonKey(name: "ID")
  final String? id;
  @JsonKey(name: "SkinID")
  final String? skinId;
  @JsonKey(name: "SkinLevelID")
  final String? skinLevelId;
  @JsonKey(name: "ChromaID")
  final String? chromaId;
  @JsonKey(name: "Attachments")
  final List<dynamic>? attachments;
  @JsonKey(name: "CharmInstanceID")
  final String? charmInstanceId;
  @JsonKey(name: "CharmID")
  final String? charmId;
  @JsonKey(name: "CharmLevelID")
  final String? charmLevelId;

  Gun({
    required this.id,
    required this.skinId,
    required this.skinLevelId,
    required this.chromaId,
    required this.attachments,
    this.charmInstanceId,
    this.charmId,
    this.charmLevelId,
  });

  factory Gun.fromJson(Map<String, dynamic> json) => _$GunFromJson(json);
  Map<String, dynamic> toJson() => _$GunToJson(this);
}

@JsonSerializable()
class Spray {
  /// UUID
  @JsonKey(name: "EquipSlotID")
  final String? equipSlotId;
  @JsonKey(name: "SprayID")
  final String? sprayId;
  @JsonKey(name: "SprayLevelID")
  final String? sprayLevelId;

  Spray({
    required this.equipSlotId,
    required this.sprayId,
    this.sprayLevelId,
  });

  factory Spray.fromJson(Map<String, dynamic> json) => _$SprayFromJson(json);
  Map<String, dynamic> toJson() => _$SprayToJson(this);
}

@JsonSerializable()
class Identity {
  /// UUID
  @JsonKey(name: "PlayerCardID")
  final String? playerCardId;
  @JsonKey(name: "PlayerTitleID")
  final String? playerTitleId;
  @JsonKey(name: "AccountLevel")
  final int? accountLevel;
  @JsonKey(name: "PreferredLevelBorderID")
  final String? preferredLevelBorderId;
  @JsonKey(name: "HideAccountLevel")
  final bool? hideAccountLevel;

  Identity({
    required this.playerCardId,
    required this.playerTitleId,
    required this.accountLevel,
    required this.preferredLevelBorderId,
    required this.hideAccountLevel,
  });

  factory Identity.fromJson(Map<String, dynamic> json) => _$IdentityFromJson(json);
  Map<String, dynamic> toJson() => _$IdentityToJson(this);
}
