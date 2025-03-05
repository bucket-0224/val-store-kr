import 'package:json_annotation/json_annotation.dart';

part 'player_card_response.g.dart';

@JsonSerializable()
class PlayerCardResponse {
  final int status;
  final PlayerCard data;

  PlayerCardResponse({required this.status, required this.data});

  factory PlayerCardResponse.fromJson(Map<String, dynamic> json) => _$PlayerCardResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerCardResponseToJson(this);
}

@JsonSerializable()
class PlayerCard {
  final String? uuid;
  final String? displayName;
  final bool? isHiddenIfNotOwned;
  final String? themeUuid;
  final String? displayIcon;
  final String? smallArt;
  final String? wideArt;
  final String? largeArt;
  final String? assetPath;

  PlayerCard({
    required this.uuid,
    required this.displayName,
    required this.isHiddenIfNotOwned,
    this.themeUuid,
    required this.displayIcon,
    required this.smallArt,
    required this.wideArt,
    required this.largeArt,
    required this.assetPath,
  });

  factory PlayerCard.fromJson(Map<String, dynamic> json) => _$PlayerCardFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerCardToJson(this);
}