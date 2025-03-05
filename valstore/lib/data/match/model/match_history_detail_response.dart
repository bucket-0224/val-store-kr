import 'package:json_annotation/json_annotation.dart';

import '../../skin/model/map_response.dart';

part 'match_history_detail_response.g.dart';

@JsonSerializable()
class MatchHistoryDetailResponse {
  final MatchInfo matchInfo;
  final List<Player> players;
  final List<dynamic> bots;
  final List<Coach> coaches;
  final List<Team> teams;
  final List<RoundResult> roundResults;
  final List<Kill>? kills;

  MatchHistoryDetailResponse({
    required this.matchInfo,
    required this.players,
    required this.bots,
    required this.coaches,
    required this.teams,
    required this.roundResults,
    required this.kills,
  });

  factory MatchHistoryDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MatchHistoryDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MatchHistoryDetailResponseToJson(this);
}

@JsonSerializable()
class MatchHistoryDetailInfoResponse {
  final String playedCharacterAvatar;
  final Player player;
  final MapInfo? mapInfo;
  final MatchInfo matchInfo;
  final List<Player> players;
  final List<dynamic> bots;
  final List<Coach> coaches;
  final List<Team> teams;
  final List<RoundResult> roundResults;
  final List<Kill>? kills;

  MatchHistoryDetailInfoResponse({
    required this.player,
    required this.mapInfo,
    required this.playedCharacterAvatar,
    required this.matchInfo,
    required this.players,
    required this.bots,
    required this.coaches,
    required this.teams,
    required this.roundResults,
    required this.kills,
  });

  factory MatchHistoryDetailInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MatchHistoryDetailInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MatchHistoryDetailInfoResponseToJson(this);
}

@JsonSerializable()
class MatchInfo {
  final String matchId;
  final String mapId;
  final String gamePodId;
  final String gameLoopZone;
  final String gameServerAddress;
  final String gameVersion;
  final int? gameLengthMillis;
  final int gameStartMillis;
  final String provisioningFlowID;
  final bool isCompleted;
  final String customGameName;
  final bool forcePostProcessing;
  final String queueID;
  final String gameMode;
  final bool isRanked;
  final bool isMatchSampled;
  final String seasonId;
  final String completionState;
  final String platformType;
  final dynamic premierMatchInfo;
  final Map<String, int>? partyRRPenalties;
  final bool shouldMatchDisablePenalties;

  MatchInfo({
    required this.matchId,
    required this.mapId,
    required this.gamePodId,
    required this.gameLoopZone,
    required this.gameServerAddress,
    required this.gameVersion,
    this.gameLengthMillis,
    required this.gameStartMillis,
    required this.provisioningFlowID,
    required this.isCompleted,
    required this.customGameName,
    required this.forcePostProcessing,
    required this.queueID,
    required this.gameMode,
    required this.isRanked,
    required this.isMatchSampled,
    required this.seasonId,
    required this.completionState,
    required this.platformType,
    this.premierMatchInfo,
    this.partyRRPenalties,
    required this.shouldMatchDisablePenalties,
  });

  factory MatchInfo.fromJson(Map<String, dynamic> json) =>
      _$MatchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MatchInfoToJson(this);
}

@JsonSerializable()
class Player {
  final String subject;
  final String gameName;
  final String tagLine;
  final PlatformInfo platformInfo;
  final String teamId;
  final String partyId;
  final String characterId;
  final PlayerStats? stats;
  final List<RoundDamage>? roundDamage;
  final int competitiveTier;
  final bool isObserver;
  final String playerCard;
  final String playerTitle;
  final String? preferredLevelBorder;
  final int accountLevel;
  final int? sessionPlaytimeMinutes;
  final List<XpModification>? xpModifications;
  final BehaviorFactors? behaviorFactors;
  final NewPlayerExperienceDetails? newPlayerExperienceDetails;

  Player({
    required this.subject,
    required this.gameName,
    required this.tagLine,
    required this.platformInfo,
    required this.teamId,
    required this.partyId,
    required this.characterId,
    this.stats,
    this.roundDamage,
    required this.competitiveTier,
    required this.isObserver,
    required this.playerCard,
    required this.playerTitle,
    this.preferredLevelBorder,
    required this.accountLevel,
    this.sessionPlaytimeMinutes,
    this.xpModifications,
    this.behaviorFactors,
    this.newPlayerExperienceDetails,
  });

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}

@JsonSerializable()
class PlatformInfo {
  final String platformType;
  final String platformOS;
  final String platformOSVersion;
  final String platformChipset;

  PlatformInfo({
    required this.platformType,
    required this.platformOS,
    required this.platformOSVersion,
    required this.platformChipset,
  });

  factory PlatformInfo.fromJson(Map<String, dynamic> json) =>
      _$PlatformInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformInfoToJson(this);
}

@JsonSerializable()
class PlayerStats {
  final int score;
  final int? roundsPlayed;
  final dynamic kills;
  final int? deaths;
  final int? assists;
  final int? playtimeMillis;
  final AbilityCasts? abilityCasts;

  PlayerStats({
    required this.score,
    required this.roundsPlayed,
    required this.kills,
    required this.deaths,
    required this.assists,
    required this.playtimeMillis,
    this.abilityCasts,
  });

  factory PlayerStats.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerStatsToJson(this);
}

@JsonSerializable()
class AbilityCasts {
  final int grenadeCasts;
  final int ability1Casts;
  final int ability2Casts;
  final int ultimateCasts;

  AbilityCasts({
    required this.grenadeCasts,
    required this.ability1Casts,
    required this.ability2Casts,
    required this.ultimateCasts,
  });

  factory AbilityCasts.fromJson(Map<String, dynamic> json) =>
      _$AbilityCastsFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityCastsToJson(this);
}

@JsonSerializable()
class RoundDamage {
  final int round;
  final String receiver;
  final int damage;

  RoundDamage({
    required this.round,
    required this.receiver,
    required this.damage,
  });

  factory RoundDamage.fromJson(Map<String, dynamic> json) =>
      _$RoundDamageFromJson(json);

  Map<String, dynamic> toJson() => _$RoundDamageToJson(this);
}

@JsonSerializable()
class XpModification {
  final double Value;
  final String ID;

  XpModification({
    required this.Value,
    required this.ID,
  });

  factory XpModification.fromJson(Map<String, dynamic> json) =>
      _$XpModificationFromJson(json);

  Map<String, dynamic> toJson() => _$XpModificationToJson(this);
}

@JsonSerializable()
class BehaviorFactors {
  final int afkRounds;
  final int? collisions;
  final double commsRatingRecovery;
  final double damageParticipationOutgoing;
  final int? friendlyFireIncoming;
  final int? friendlyFireOutgoing;
  final double? mouseMovement;
  final int? stayedInSpawnRounds;

  BehaviorFactors({
    required this.afkRounds,
    this.collisions,
    required this.commsRatingRecovery,
    required this.damageParticipationOutgoing,
    this.friendlyFireIncoming,
    this.friendlyFireOutgoing,
    this.mouseMovement,
    this.stayedInSpawnRounds,
  });

  factory BehaviorFactors.fromJson(Map<String, dynamic> json) =>
      _$BehaviorFactorsFromJson(json);

  Map<String, dynamic> toJson() => _$BehaviorFactorsToJson(this);
}

@JsonSerializable()
class NewPlayerExperienceDetails {
  final BasicMovement basicMovement;
  final BasicGunSkill basicGunSkill;
  final AdaptiveBots adaptiveBots;
  final Ability ability;
  final BombPlant bombPlant;
  final DefendBombSite defendBombSite;
  final SettingStatus settingStatus;
  final String versionString;

  NewPlayerExperienceDetails({
    required this.basicMovement,
    required this.basicGunSkill,
    required this.adaptiveBots,
    required this.ability,
    required this.bombPlant,
    required this.defendBombSite,
    required this.settingStatus,
    required this.versionString,
  });

  factory NewPlayerExperienceDetails.fromJson(Map<String, dynamic> json) =>
      _$NewPlayerExperienceDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$NewPlayerExperienceDetailsToJson(this);
}

@JsonSerializable()
class BasicMovement {
  final int idleTimeMillis;
  final int objectiveCompleteTimeMillis;

  BasicMovement({
    required this.idleTimeMillis,
    required this.objectiveCompleteTimeMillis,
  });

  factory BasicMovement.fromJson(Map<String, dynamic> json) =>
      _$BasicMovementFromJson(json);

  Map<String, dynamic> toJson() => _$BasicMovementToJson(this);
}

@JsonSerializable()
class BasicGunSkill {
  final int idleTimeMillis;
  final int objectiveCompleteTimeMillis;

  BasicGunSkill({
    required this.idleTimeMillis,
    required this.objectiveCompleteTimeMillis,
  });

  factory BasicGunSkill.fromJson(Map<String, dynamic> json) =>
      _$BasicGunSkillFromJson(json);

  Map<String, dynamic> toJson() => _$BasicGunSkillToJson(this);
}

@JsonSerializable()
class AdaptiveBots {
  final int adaptiveBotAverageDurationMillisAllAttempts;
  final int adaptiveBotAverageDurationMillisFirstAttempt;
  final dynamic killDetailsFirstAttempt;
  final int idleTimeMillis;
  final int objectiveCompleteTimeMillis;

  AdaptiveBots({
    required this.adaptiveBotAverageDurationMillisAllAttempts,
    required this.adaptiveBotAverageDurationMillisFirstAttempt,
    this.killDetailsFirstAttempt,
    required this.idleTimeMillis,
    required this.objectiveCompleteTimeMillis,
  });

  factory AdaptiveBots.fromJson(Map<String, dynamic> json) =>
      _$AdaptiveBotsFromJson(json);

  Map<String, dynamic> toJson() => _$AdaptiveBotsToJson(this);
}

@JsonSerializable()
class Ability {
  final int idleTimeMillis;
  final int objectiveCompleteTimeMillis;

  Ability({
    required this.idleTimeMillis,
    required this.objectiveCompleteTimeMillis,
  });

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}

@JsonSerializable()
class BombPlant {
  final int idleTimeMillis;
  final int objectiveCompleteTimeMillis;

  BombPlant({
    required this.idleTimeMillis,
    required this.objectiveCompleteTimeMillis,
  });

  factory BombPlant.fromJson(Map<String, dynamic> json) =>
      _$BombPlantFromJson(json);

  Map<String, dynamic> toJson() => _$BombPlantToJson(this);
}

@JsonSerializable()
class DefendBombSite {
  final bool success;
  final int idleTimeMillis;
  final int objectiveCompleteTimeMillis;

  DefendBombSite({
    required this.success,
    required this.idleTimeMillis,
    required this.objectiveCompleteTimeMillis,
  });

  factory DefendBombSite.fromJson(Map<String, dynamic> json) =>
      _$DefendBombSiteFromJson(json);

  Map<String, dynamic> toJson() => _$DefendBombSiteToJson(this);
}

@JsonSerializable()
class SettingStatus {
  final bool isMouseSensitivityDefault;
  final bool isCrosshairDefault;

  SettingStatus({
    required this.isMouseSensitivityDefault,
    required this.isCrosshairDefault,
  });

  factory SettingStatus.fromJson(Map<String, dynamic> json) =>
      _$SettingStatusFromJson(json);

  Map<String, dynamic> toJson() => _$SettingStatusToJson(this);
}

@JsonSerializable()
class Coach {
  final String subject;
  final String teamId;

  Coach({
    required this.subject,
    required this.teamId,
  });

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);

  Map<String, dynamic> toJson() => _$CoachToJson(this);
}

@JsonSerializable()
class Team {
  final String teamId;
  final bool won;
  final int? roundsPlayed;
  final int roundsWon;
  final int numPoints;

  Team({
    required this.teamId,
    required this.won,
    required this.roundsPlayed,
    required this.roundsWon,
    required this.numPoints,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable()
class RoundResult {
  final int roundNum;
  final String roundResult;
  final String roundCeremony;
  final String winningTeam;
  final String? bombPlanter;
  final String? bombDefuser;
  final int? plantRoundTime;
  final List<PlayerLocation>? plantPlayerLocations;
  final Location plantLocation;
  final String plantSite;
  final int? defuseRoundTime;
  final List<PlayerLocation>? defusePlayerLocations;
  final Location defuseLocation;
  final List<PlayerStats?>? playerStats;
  final String roundResultCode;
  final List<PlayerEconomy>? playerEconomies;
  final List<PlayerScore>? playerScores;

  RoundResult({
    required this.roundNum,
    required this.roundResult,
    required this.roundCeremony,
    required this.winningTeam,
    this.bombPlanter,
    this.bombDefuser,
    this.plantRoundTime,
    this.plantPlayerLocations,
    required this.plantLocation,
    required this.plantSite,
    this.defuseRoundTime,
    this.defusePlayerLocations,
    required this.defuseLocation,
    this.playerStats,
    required this.roundResultCode,
    this.playerEconomies,
    this.playerScores,
  });

  factory RoundResult.fromJson(Map<String, dynamic> json) =>
      _$RoundResultFromJson(json);

  Map<String, dynamic> toJson() => _$RoundResultToJson(this);
}

@JsonSerializable()
class Kill {
  final int gameTime;
  final int roundTime;
  final String killer;
  final String victim;
  final Location victimLocation;
  final List<String> assistants;
  final List<PlayerLocation> playerLocations;
  final FinishingDamage finishingDamage;
  final int round;

  Kill({
    required this.gameTime,
    required this.roundTime,
    required this.killer,
    required this.victim,
    required this.victimLocation,
    required this.assistants,
    required this.playerLocations,
    required this.finishingDamage,
    required this.round,
  });

  factory Kill.fromJson(Map<String, dynamic> json) => _$KillFromJson(json);

  Map<String, dynamic> toJson() => _$KillToJson(this);
}

@JsonSerializable()
class Location {
  final double x;
  final double y;

  Location({
    required this.x,
    required this.y,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class PlayerLocation {
  final String subject;
  final double viewRadians;
  final Location location;

  PlayerLocation({
    required this.subject,
    required this.viewRadians,
    required this.location,
  });

  factory PlayerLocation.fromJson(Map<String, dynamic> json) =>
      _$PlayerLocationFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerLocationToJson(this);
}

@JsonSerializable()
class FinishingDamage {
  final String damageType;
  final String damageItem;
  final bool isSecondaryFireMode;

  FinishingDamage({
    required this.damageType,
    required this.damageItem,
    required this.isSecondaryFireMode,
  });

  factory FinishingDamage.fromJson(Map<String, dynamic> json) =>
      _$FinishingDamageFromJson(json);

  Map<String, dynamic> toJson() => _$FinishingDamageToJson(this);
}

@JsonSerializable()
class PlayerEconomy {
  final String subject;
  final int loadoutValue;
  final String weapon;
  final String armor;
  final int remaining;
  final int spent;

  PlayerEconomy({
    required this.subject,
    required this.loadoutValue,
    required this.weapon,
    required this.armor,
    required this.remaining,
    required this.spent,
  });

  factory PlayerEconomy.fromJson(Map<String, dynamic> json) =>
      _$PlayerEconomyFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerEconomyToJson(this);
}

@JsonSerializable()
class PlayerScore {
  final String subject;
  final int score;

  PlayerScore({
    required this.subject,
    required this.score,
  });

  factory PlayerScore.fromJson(Map<String, dynamic> json) =>
      _$PlayerScoreFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerScoreToJson(this);
}