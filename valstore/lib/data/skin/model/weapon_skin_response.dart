import 'package:json_annotation/json_annotation.dart';

part 'weapon_skin_response.g.dart';

@JsonSerializable(explicitToJson: true)
class WeaponSkinResponse {
  final int status;
  final List<WeaponSkinDetail> data;

  WeaponSkinResponse({
    required this.status,
    required this.data,
  });

  factory WeaponSkinResponse.fromJson(Map<String, dynamic> json) =>
      _$WeaponSkinResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeaponSkinResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WeaponSkinDetail {
  final String? uuid;
  final String? displayName;
  final String? themeUuid;
  final String? contentTierUuid;
  final String? displayIcon;
  final String? wallpaper;
  final String? assetPath;
  final List<Chroma> chromas;
  final List<Level> levels;

  WeaponSkinDetail({
    required this.uuid,
    required this.displayName,
    required this.themeUuid,
    required this.contentTierUuid,
    required this.displayIcon,
    required this.wallpaper,
    required this.assetPath,
    required this.chromas,
    required this.levels,
  });

  factory WeaponSkinDetail.fromJson(Map<String, dynamic> json) =>
      _$WeaponSkinDetailFromJson(json);

  Map<String, dynamic> toJson() => _$WeaponSkinDetailToJson(this);
}

@JsonSerializable()
class Chroma {
  final String? uuid;
  final String? displayName;
  final String? displayIcon;
  final String? fullRender;
  final String? swatch;
  final String? streamedVideo;
  final String? assetPath;

  Chroma({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.fullRender,
    required this.swatch,
    this.streamedVideo,
    required this.assetPath,
  });

  factory Chroma.fromJson(Map<String, dynamic> json) => _$ChromaFromJson(json);

  Map<String, dynamic> toJson() => _$ChromaToJson(this);
}

@JsonSerializable()
class Level {
  final String? uuid;
  final String? displayName;
  final String? levelItem;
  final String? displayIcon;
  final String? streamedVideo;
  final String? assetPath;

  Level({
    required this.uuid,
    required this.displayName,
    this.levelItem,
    this.displayIcon,
    this.streamedVideo,
    required this.assetPath,
  });

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);

  Map<String, dynamic> toJson() => _$LevelToJson(this);
}
