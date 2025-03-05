import 'package:json_annotation/json_annotation.dart';

part 'map_response.g.dart';

@JsonSerializable()
class MapResponse {
  final int status;
  final List<MapInfo> data;

  MapResponse({required this.status, required this.data});

  factory MapResponse.fromJson(Map<String, dynamic> json) => _$MapResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MapResponseToJson(this);
}

@JsonSerializable()
class MapInfo {
  final String uuid;
  final String displayName;
  final String? narrativeDescription;
  final String? tacticalDescription;
  final String? coordinates;
  final String? displayIcon;
  final String? listViewIcon;
  final String? listViewIconTall;
  final String? splash;
  final String? stylizedBackgroundImage;
  final String? premierBackgroundImage;
  final String? assetPath;
  final String? mapUrl;
  final double? xMultiplier;
  final double? yMultiplier;
  final double? xScalarToAdd;
  final double? yScalarToAdd;
  final List<MapCallOut>? callouts;

  MapInfo({
    required this.uuid,
    required this.displayName,
    this.narrativeDescription,
    required this.tacticalDescription,
    required this.coordinates,
    required this.displayIcon,
    required this.listViewIcon,
    required this.listViewIconTall,
    required this.splash,
    required this.stylizedBackgroundImage,
    required this.premierBackgroundImage,
    required this.assetPath,
    required this.mapUrl,
    required this.xMultiplier,
    required this.yMultiplier,
    required this.xScalarToAdd,
    required this.yScalarToAdd,
    required this.callouts,
  });

  factory MapInfo.fromJson(Map<String, dynamic> json) => _$MapInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MapInfoToJson(this);
}

@JsonSerializable()
class MapCallOut {
  final String? regionName;
  final String? superRegionName;
  final Location? location;

  MapCallOut({required this.regionName, required this.superRegionName, required this.location});

  factory MapCallOut.fromJson(Map<String, dynamic> json) => _$MapCallOutFromJson(json);
  Map<String, dynamic> toJson() => _$MapCallOutToJson(this);
}

@JsonSerializable()
class Location {
  final double? x;
  final double? y;

  Location({required this.x, required this.y});

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
