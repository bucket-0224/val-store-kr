import 'package:json_annotation/json_annotation.dart';

part 'player_title_response.g.dart';

@JsonSerializable()
class PlayerTitleResponse {
  final int status;
  final PlayerTitle data;

  PlayerTitleResponse({required this.status, required this.data});

  factory PlayerTitleResponse.fromJson(Map<String, dynamic> json) => _$PlayerTitleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerTitleResponseToJson(this);
}

@JsonSerializable()
class PlayerTitle {
  final String? uuid;
  final String? displayName;
  final String? titleText;
  final bool? isHiddenIfNotOwned;
  final String? assetPath;

  PlayerTitle({
    required this.uuid,
    this.displayName,
    this.titleText,
    required this.isHiddenIfNotOwned,
    required this.assetPath,
  });

  factory PlayerTitle.fromJson(Map<String, dynamic> json) => _$PlayerTitleFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerTitleToJson(this);
}