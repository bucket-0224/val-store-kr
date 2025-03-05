import 'package:json_annotation/json_annotation.dart';

part 'agent_response.g.dart';

@JsonSerializable()
class AgentResponse {
  final int status;
  final Agent data;

  AgentResponse({
    required this.status,
    required this.data,
  });

  factory AgentResponse.fromJson(Map<String, dynamic> json) => _$AgentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AgentResponseToJson(this);
}


@JsonSerializable()
class Agent {
  final String uuid;
  final String displayName;
  final String description;
  final String developerName;
  final String releaseDate;
  final String displayIcon;
  final String displayIconSmall;
  final String bustPortrait;
  final String fullPortrait;
  final String fullPortraitV2;
  final String killfeedPortrait;
  final String background;
  final List<String>? backgroundGradientColors;
  final String assetPath;
  final bool isFullPortraitRightFacing;
  final bool isPlayableCharacter;
  final bool isAvailableForTest;
  final bool isBaseContent;
  final Role role;
  final List<Ability>? abilities;
  final String? voiceLine;

  Agent({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.releaseDate,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.bustPortrait,
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.killfeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.assetPath,
    required this.isFullPortraitRightFacing,
    required this.isPlayableCharacter,
    required this.isAvailableForTest,
    required this.isBaseContent,
    required this.role,
    required this.abilities,
    this.voiceLine,
  });

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AgentToJson(this);
}

@JsonSerializable()
class Role {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String assetPath;

  Role({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}

@JsonSerializable()
class Ability {
  final String slot;
  final String displayName;
  final String description;
  final String? displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);
  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}
