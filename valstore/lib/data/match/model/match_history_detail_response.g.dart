// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_history_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchHistoryDetailResponse _$MatchHistoryDetailResponseFromJson(
        Map<String, dynamic> json) =>
    MatchHistoryDetailResponse(
      matchInfo: MatchInfo.fromJson(json['matchInfo'] as Map<String, dynamic>),
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      bots: json['bots'] as List<dynamic>,
      coaches: (json['coaches'] as List<dynamic>)
          .map((e) => Coach.fromJson(e as Map<String, dynamic>))
          .toList(),
      teams: (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundResults: (json['roundResults'] as List<dynamic>)
          .map((e) => RoundResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      kills: (json['kills'] as List<dynamic>?)
          ?.map((e) => Kill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchHistoryDetailResponseToJson(
        MatchHistoryDetailResponse instance) =>
    <String, dynamic>{
      'matchInfo': instance.matchInfo,
      'players': instance.players,
      'bots': instance.bots,
      'coaches': instance.coaches,
      'teams': instance.teams,
      'roundResults': instance.roundResults,
      'kills': instance.kills,
    };

MatchHistoryDetailInfoResponse _$MatchHistoryDetailInfoResponseFromJson(
        Map<String, dynamic> json) =>
    MatchHistoryDetailInfoResponse(
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      mapInfo: json['mapInfo'] == null
          ? null
          : MapInfo.fromJson(json['mapInfo'] as Map<String, dynamic>),
      playedCharacterAvatar: json['playedCharacterAvatar'] as String,
      matchInfo: MatchInfo.fromJson(json['matchInfo'] as Map<String, dynamic>),
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      bots: json['bots'] as List<dynamic>,
      coaches: (json['coaches'] as List<dynamic>)
          .map((e) => Coach.fromJson(e as Map<String, dynamic>))
          .toList(),
      teams: (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundResults: (json['roundResults'] as List<dynamic>)
          .map((e) => RoundResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      kills: (json['kills'] as List<dynamic>?)
          ?.map((e) => Kill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchHistoryDetailInfoResponseToJson(
        MatchHistoryDetailInfoResponse instance) =>
    <String, dynamic>{
      'playedCharacterAvatar': instance.playedCharacterAvatar,
      'player': instance.player,
      'mapInfo': instance.mapInfo,
      'matchInfo': instance.matchInfo,
      'players': instance.players,
      'bots': instance.bots,
      'coaches': instance.coaches,
      'teams': instance.teams,
      'roundResults': instance.roundResults,
      'kills': instance.kills,
    };

MatchInfo _$MatchInfoFromJson(Map<String, dynamic> json) => MatchInfo(
      matchId: json['matchId'] as String,
      mapId: json['mapId'] as String,
      gamePodId: json['gamePodId'] as String,
      gameLoopZone: json['gameLoopZone'] as String,
      gameServerAddress: json['gameServerAddress'] as String,
      gameVersion: json['gameVersion'] as String,
      gameLengthMillis: (json['gameLengthMillis'] as num?)?.toInt(),
      gameStartMillis: (json['gameStartMillis'] as num).toInt(),
      provisioningFlowID: json['provisioningFlowID'] as String,
      isCompleted: json['isCompleted'] as bool,
      customGameName: json['customGameName'] as String,
      forcePostProcessing: json['forcePostProcessing'] as bool,
      queueID: json['queueID'] as String,
      gameMode: json['gameMode'] as String,
      isRanked: json['isRanked'] as bool,
      isMatchSampled: json['isMatchSampled'] as bool,
      seasonId: json['seasonId'] as String,
      completionState: json['completionState'] as String,
      platformType: json['platformType'] as String,
      premierMatchInfo: json['premierMatchInfo'],
      partyRRPenalties:
          (json['partyRRPenalties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      shouldMatchDisablePenalties: json['shouldMatchDisablePenalties'] as bool,
    );

Map<String, dynamic> _$MatchInfoToJson(MatchInfo instance) => <String, dynamic>{
      'matchId': instance.matchId,
      'mapId': instance.mapId,
      'gamePodId': instance.gamePodId,
      'gameLoopZone': instance.gameLoopZone,
      'gameServerAddress': instance.gameServerAddress,
      'gameVersion': instance.gameVersion,
      'gameLengthMillis': instance.gameLengthMillis,
      'gameStartMillis': instance.gameStartMillis,
      'provisioningFlowID': instance.provisioningFlowID,
      'isCompleted': instance.isCompleted,
      'customGameName': instance.customGameName,
      'forcePostProcessing': instance.forcePostProcessing,
      'queueID': instance.queueID,
      'gameMode': instance.gameMode,
      'isRanked': instance.isRanked,
      'isMatchSampled': instance.isMatchSampled,
      'seasonId': instance.seasonId,
      'completionState': instance.completionState,
      'platformType': instance.platformType,
      'premierMatchInfo': instance.premierMatchInfo,
      'partyRRPenalties': instance.partyRRPenalties,
      'shouldMatchDisablePenalties': instance.shouldMatchDisablePenalties,
    };

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      subject: json['subject'] as String,
      gameName: json['gameName'] as String,
      tagLine: json['tagLine'] as String,
      platformInfo:
          PlatformInfo.fromJson(json['platformInfo'] as Map<String, dynamic>),
      teamId: json['teamId'] as String,
      partyId: json['partyId'] as String,
      characterId: json['characterId'] as String,
      stats: json['stats'] == null
          ? null
          : PlayerStats.fromJson(json['stats'] as Map<String, dynamic>),
      roundDamage: (json['roundDamage'] as List<dynamic>?)
          ?.map((e) => RoundDamage.fromJson(e as Map<String, dynamic>))
          .toList(),
      competitiveTier: (json['competitiveTier'] as num).toInt(),
      isObserver: json['isObserver'] as bool,
      playerCard: json['playerCard'] as String,
      playerTitle: json['playerTitle'] as String,
      preferredLevelBorder: json['preferredLevelBorder'] as String?,
      accountLevel: (json['accountLevel'] as num).toInt(),
      sessionPlaytimeMinutes: (json['sessionPlaytimeMinutes'] as num?)?.toInt(),
      xpModifications: (json['xpModifications'] as List<dynamic>?)
          ?.map((e) => XpModification.fromJson(e as Map<String, dynamic>))
          .toList(),
      behaviorFactors: json['behaviorFactors'] == null
          ? null
          : BehaviorFactors.fromJson(
              json['behaviorFactors'] as Map<String, dynamic>),
      newPlayerExperienceDetails: json['newPlayerExperienceDetails'] == null
          ? null
          : NewPlayerExperienceDetails.fromJson(
              json['newPlayerExperienceDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'subject': instance.subject,
      'gameName': instance.gameName,
      'tagLine': instance.tagLine,
      'platformInfo': instance.platformInfo,
      'teamId': instance.teamId,
      'partyId': instance.partyId,
      'characterId': instance.characterId,
      'stats': instance.stats,
      'roundDamage': instance.roundDamage,
      'competitiveTier': instance.competitiveTier,
      'isObserver': instance.isObserver,
      'playerCard': instance.playerCard,
      'playerTitle': instance.playerTitle,
      'preferredLevelBorder': instance.preferredLevelBorder,
      'accountLevel': instance.accountLevel,
      'sessionPlaytimeMinutes': instance.sessionPlaytimeMinutes,
      'xpModifications': instance.xpModifications,
      'behaviorFactors': instance.behaviorFactors,
      'newPlayerExperienceDetails': instance.newPlayerExperienceDetails,
    };

PlatformInfo _$PlatformInfoFromJson(Map<String, dynamic> json) => PlatformInfo(
      platformType: json['platformType'] as String,
      platformOS: json['platformOS'] as String,
      platformOSVersion: json['platformOSVersion'] as String,
      platformChipset: json['platformChipset'] as String,
    );

Map<String, dynamic> _$PlatformInfoToJson(PlatformInfo instance) =>
    <String, dynamic>{
      'platformType': instance.platformType,
      'platformOS': instance.platformOS,
      'platformOSVersion': instance.platformOSVersion,
      'platformChipset': instance.platformChipset,
    };

PlayerStats _$PlayerStatsFromJson(Map<String, dynamic> json) => PlayerStats(
      score: (json['score'] as num).toInt(),
      roundsPlayed: (json['roundsPlayed'] as num?)?.toInt(),
      kills: json['kills'],
      deaths: (json['deaths'] as num?)?.toInt(),
      assists: (json['assists'] as num?)?.toInt(),
      playtimeMillis: (json['playtimeMillis'] as num?)?.toInt(),
      abilityCasts: json['abilityCasts'] == null
          ? null
          : AbilityCasts.fromJson(json['abilityCasts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerStatsToJson(PlayerStats instance) =>
    <String, dynamic>{
      'score': instance.score,
      'roundsPlayed': instance.roundsPlayed,
      'kills': instance.kills,
      'deaths': instance.deaths,
      'assists': instance.assists,
      'playtimeMillis': instance.playtimeMillis,
      'abilityCasts': instance.abilityCasts,
    };

AbilityCasts _$AbilityCastsFromJson(Map<String, dynamic> json) => AbilityCasts(
      grenadeCasts: (json['grenadeCasts'] as num).toInt(),
      ability1Casts: (json['ability1Casts'] as num).toInt(),
      ability2Casts: (json['ability2Casts'] as num).toInt(),
      ultimateCasts: (json['ultimateCasts'] as num).toInt(),
    );

Map<String, dynamic> _$AbilityCastsToJson(AbilityCasts instance) =>
    <String, dynamic>{
      'grenadeCasts': instance.grenadeCasts,
      'ability1Casts': instance.ability1Casts,
      'ability2Casts': instance.ability2Casts,
      'ultimateCasts': instance.ultimateCasts,
    };

RoundDamage _$RoundDamageFromJson(Map<String, dynamic> json) => RoundDamage(
      round: (json['round'] as num).toInt(),
      receiver: json['receiver'] as String,
      damage: (json['damage'] as num).toInt(),
    );

Map<String, dynamic> _$RoundDamageToJson(RoundDamage instance) =>
    <String, dynamic>{
      'round': instance.round,
      'receiver': instance.receiver,
      'damage': instance.damage,
    };

XpModification _$XpModificationFromJson(Map<String, dynamic> json) =>
    XpModification(
      Value: (json['Value'] as num).toDouble(),
      ID: json['ID'] as String,
    );

Map<String, dynamic> _$XpModificationToJson(XpModification instance) =>
    <String, dynamic>{
      'Value': instance.Value,
      'ID': instance.ID,
    };

BehaviorFactors _$BehaviorFactorsFromJson(Map<String, dynamic> json) =>
    BehaviorFactors(
      afkRounds: (json['afkRounds'] as num).toInt(),
      collisions: (json['collisions'] as num?)?.toInt(),
      commsRatingRecovery: (json['commsRatingRecovery'] as num).toDouble(),
      damageParticipationOutgoing:
          (json['damageParticipationOutgoing'] as num).toDouble(),
      friendlyFireIncoming: (json['friendlyFireIncoming'] as num?)?.toInt(),
      friendlyFireOutgoing: (json['friendlyFireOutgoing'] as num?)?.toInt(),
      mouseMovement: (json['mouseMovement'] as num?)?.toDouble(),
      stayedInSpawnRounds: (json['stayedInSpawnRounds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BehaviorFactorsToJson(BehaviorFactors instance) =>
    <String, dynamic>{
      'afkRounds': instance.afkRounds,
      'collisions': instance.collisions,
      'commsRatingRecovery': instance.commsRatingRecovery,
      'damageParticipationOutgoing': instance.damageParticipationOutgoing,
      'friendlyFireIncoming': instance.friendlyFireIncoming,
      'friendlyFireOutgoing': instance.friendlyFireOutgoing,
      'mouseMovement': instance.mouseMovement,
      'stayedInSpawnRounds': instance.stayedInSpawnRounds,
    };

NewPlayerExperienceDetails _$NewPlayerExperienceDetailsFromJson(
        Map<String, dynamic> json) =>
    NewPlayerExperienceDetails(
      basicMovement:
          BasicMovement.fromJson(json['basicMovement'] as Map<String, dynamic>),
      basicGunSkill:
          BasicGunSkill.fromJson(json['basicGunSkill'] as Map<String, dynamic>),
      adaptiveBots:
          AdaptiveBots.fromJson(json['adaptiveBots'] as Map<String, dynamic>),
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
      bombPlant: BombPlant.fromJson(json['bombPlant'] as Map<String, dynamic>),
      defendBombSite: DefendBombSite.fromJson(
          json['defendBombSite'] as Map<String, dynamic>),
      settingStatus:
          SettingStatus.fromJson(json['settingStatus'] as Map<String, dynamic>),
      versionString: json['versionString'] as String,
    );

Map<String, dynamic> _$NewPlayerExperienceDetailsToJson(
        NewPlayerExperienceDetails instance) =>
    <String, dynamic>{
      'basicMovement': instance.basicMovement,
      'basicGunSkill': instance.basicGunSkill,
      'adaptiveBots': instance.adaptiveBots,
      'ability': instance.ability,
      'bombPlant': instance.bombPlant,
      'defendBombSite': instance.defendBombSite,
      'settingStatus': instance.settingStatus,
      'versionString': instance.versionString,
    };

BasicMovement _$BasicMovementFromJson(Map<String, dynamic> json) =>
    BasicMovement(
      idleTimeMillis: (json['idleTimeMillis'] as num).toInt(),
      objectiveCompleteTimeMillis:
          (json['objectiveCompleteTimeMillis'] as num).toInt(),
    );

Map<String, dynamic> _$BasicMovementToJson(BasicMovement instance) =>
    <String, dynamic>{
      'idleTimeMillis': instance.idleTimeMillis,
      'objectiveCompleteTimeMillis': instance.objectiveCompleteTimeMillis,
    };

BasicGunSkill _$BasicGunSkillFromJson(Map<String, dynamic> json) =>
    BasicGunSkill(
      idleTimeMillis: (json['idleTimeMillis'] as num).toInt(),
      objectiveCompleteTimeMillis:
          (json['objectiveCompleteTimeMillis'] as num).toInt(),
    );

Map<String, dynamic> _$BasicGunSkillToJson(BasicGunSkill instance) =>
    <String, dynamic>{
      'idleTimeMillis': instance.idleTimeMillis,
      'objectiveCompleteTimeMillis': instance.objectiveCompleteTimeMillis,
    };

AdaptiveBots _$AdaptiveBotsFromJson(Map<String, dynamic> json) => AdaptiveBots(
      adaptiveBotAverageDurationMillisAllAttempts:
          (json['adaptiveBotAverageDurationMillisAllAttempts'] as num).toInt(),
      adaptiveBotAverageDurationMillisFirstAttempt:
          (json['adaptiveBotAverageDurationMillisFirstAttempt'] as num).toInt(),
      killDetailsFirstAttempt: json['killDetailsFirstAttempt'],
      idleTimeMillis: (json['idleTimeMillis'] as num).toInt(),
      objectiveCompleteTimeMillis:
          (json['objectiveCompleteTimeMillis'] as num).toInt(),
    );

Map<String, dynamic> _$AdaptiveBotsToJson(AdaptiveBots instance) =>
    <String, dynamic>{
      'adaptiveBotAverageDurationMillisAllAttempts':
          instance.adaptiveBotAverageDurationMillisAllAttempts,
      'adaptiveBotAverageDurationMillisFirstAttempt':
          instance.adaptiveBotAverageDurationMillisFirstAttempt,
      'killDetailsFirstAttempt': instance.killDetailsFirstAttempt,
      'idleTimeMillis': instance.idleTimeMillis,
      'objectiveCompleteTimeMillis': instance.objectiveCompleteTimeMillis,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      idleTimeMillis: (json['idleTimeMillis'] as num).toInt(),
      objectiveCompleteTimeMillis:
          (json['objectiveCompleteTimeMillis'] as num).toInt(),
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'idleTimeMillis': instance.idleTimeMillis,
      'objectiveCompleteTimeMillis': instance.objectiveCompleteTimeMillis,
    };

BombPlant _$BombPlantFromJson(Map<String, dynamic> json) => BombPlant(
      idleTimeMillis: (json['idleTimeMillis'] as num).toInt(),
      objectiveCompleteTimeMillis:
          (json['objectiveCompleteTimeMillis'] as num).toInt(),
    );

Map<String, dynamic> _$BombPlantToJson(BombPlant instance) => <String, dynamic>{
      'idleTimeMillis': instance.idleTimeMillis,
      'objectiveCompleteTimeMillis': instance.objectiveCompleteTimeMillis,
    };

DefendBombSite _$DefendBombSiteFromJson(Map<String, dynamic> json) =>
    DefendBombSite(
      success: json['success'] as bool,
      idleTimeMillis: (json['idleTimeMillis'] as num).toInt(),
      objectiveCompleteTimeMillis:
          (json['objectiveCompleteTimeMillis'] as num).toInt(),
    );

Map<String, dynamic> _$DefendBombSiteToJson(DefendBombSite instance) =>
    <String, dynamic>{
      'success': instance.success,
      'idleTimeMillis': instance.idleTimeMillis,
      'objectiveCompleteTimeMillis': instance.objectiveCompleteTimeMillis,
    };

SettingStatus _$SettingStatusFromJson(Map<String, dynamic> json) =>
    SettingStatus(
      isMouseSensitivityDefault: json['isMouseSensitivityDefault'] as bool,
      isCrosshairDefault: json['isCrosshairDefault'] as bool,
    );

Map<String, dynamic> _$SettingStatusToJson(SettingStatus instance) =>
    <String, dynamic>{
      'isMouseSensitivityDefault': instance.isMouseSensitivityDefault,
      'isCrosshairDefault': instance.isCrosshairDefault,
    };

Coach _$CoachFromJson(Map<String, dynamic> json) => Coach(
      subject: json['subject'] as String,
      teamId: json['teamId'] as String,
    );

Map<String, dynamic> _$CoachToJson(Coach instance) => <String, dynamic>{
      'subject': instance.subject,
      'teamId': instance.teamId,
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      teamId: json['teamId'] as String,
      won: json['won'] as bool,
      roundsPlayed: (json['roundsPlayed'] as num?)?.toInt(),
      roundsWon: (json['roundsWon'] as num).toInt(),
      numPoints: (json['numPoints'] as num).toInt(),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'teamId': instance.teamId,
      'won': instance.won,
      'roundsPlayed': instance.roundsPlayed,
      'roundsWon': instance.roundsWon,
      'numPoints': instance.numPoints,
    };

RoundResult _$RoundResultFromJson(Map<String, dynamic> json) => RoundResult(
      roundNum: (json['roundNum'] as num).toInt(),
      roundResult: json['roundResult'] as String,
      roundCeremony: json['roundCeremony'] as String,
      winningTeam: json['winningTeam'] as String,
      bombPlanter: json['bombPlanter'] as String?,
      bombDefuser: json['bombDefuser'] as String?,
      plantRoundTime: (json['plantRoundTime'] as num?)?.toInt(),
      plantPlayerLocations: (json['plantPlayerLocations'] as List<dynamic>?)
          ?.map((e) => PlayerLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      plantLocation:
          Location.fromJson(json['plantLocation'] as Map<String, dynamic>),
      plantSite: json['plantSite'] as String,
      defuseRoundTime: (json['defuseRoundTime'] as num?)?.toInt(),
      defusePlayerLocations: (json['defusePlayerLocations'] as List<dynamic>?)
          ?.map((e) => PlayerLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      defuseLocation:
          Location.fromJson(json['defuseLocation'] as Map<String, dynamic>),
      playerStats: (json['playerStats'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PlayerStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundResultCode: json['roundResultCode'] as String,
      playerEconomies: (json['playerEconomies'] as List<dynamic>?)
          ?.map((e) => PlayerEconomy.fromJson(e as Map<String, dynamic>))
          .toList(),
      playerScores: (json['playerScores'] as List<dynamic>?)
          ?.map((e) => PlayerScore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoundResultToJson(RoundResult instance) =>
    <String, dynamic>{
      'roundNum': instance.roundNum,
      'roundResult': instance.roundResult,
      'roundCeremony': instance.roundCeremony,
      'winningTeam': instance.winningTeam,
      'bombPlanter': instance.bombPlanter,
      'bombDefuser': instance.bombDefuser,
      'plantRoundTime': instance.plantRoundTime,
      'plantPlayerLocations': instance.plantPlayerLocations,
      'plantLocation': instance.plantLocation,
      'plantSite': instance.plantSite,
      'defuseRoundTime': instance.defuseRoundTime,
      'defusePlayerLocations': instance.defusePlayerLocations,
      'defuseLocation': instance.defuseLocation,
      'playerStats': instance.playerStats,
      'roundResultCode': instance.roundResultCode,
      'playerEconomies': instance.playerEconomies,
      'playerScores': instance.playerScores,
    };

Kill _$KillFromJson(Map<String, dynamic> json) => Kill(
      gameTime: (json['gameTime'] as num).toInt(),
      roundTime: (json['roundTime'] as num).toInt(),
      killer: json['killer'] as String,
      victim: json['victim'] as String,
      victimLocation:
          Location.fromJson(json['victimLocation'] as Map<String, dynamic>),
      assistants: (json['assistants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      playerLocations: (json['playerLocations'] as List<dynamic>)
          .map((e) => PlayerLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      finishingDamage: FinishingDamage.fromJson(
          json['finishingDamage'] as Map<String, dynamic>),
      round: (json['round'] as num).toInt(),
    );

Map<String, dynamic> _$KillToJson(Kill instance) => <String, dynamic>{
      'gameTime': instance.gameTime,
      'roundTime': instance.roundTime,
      'killer': instance.killer,
      'victim': instance.victim,
      'victimLocation': instance.victimLocation,
      'assistants': instance.assistants,
      'playerLocations': instance.playerLocations,
      'finishingDamage': instance.finishingDamage,
      'round': instance.round,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

PlayerLocation _$PlayerLocationFromJson(Map<String, dynamic> json) =>
    PlayerLocation(
      subject: json['subject'] as String,
      viewRadians: (json['viewRadians'] as num).toDouble(),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerLocationToJson(PlayerLocation instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'viewRadians': instance.viewRadians,
      'location': instance.location,
    };

FinishingDamage _$FinishingDamageFromJson(Map<String, dynamic> json) =>
    FinishingDamage(
      damageType: json['damageType'] as String,
      damageItem: json['damageItem'] as String,
      isSecondaryFireMode: json['isSecondaryFireMode'] as bool,
    );

Map<String, dynamic> _$FinishingDamageToJson(FinishingDamage instance) =>
    <String, dynamic>{
      'damageType': instance.damageType,
      'damageItem': instance.damageItem,
      'isSecondaryFireMode': instance.isSecondaryFireMode,
    };

PlayerEconomy _$PlayerEconomyFromJson(Map<String, dynamic> json) =>
    PlayerEconomy(
      subject: json['subject'] as String,
      loadoutValue: (json['loadoutValue'] as num).toInt(),
      weapon: json['weapon'] as String,
      armor: json['armor'] as String,
      remaining: (json['remaining'] as num).toInt(),
      spent: (json['spent'] as num).toInt(),
    );

Map<String, dynamic> _$PlayerEconomyToJson(PlayerEconomy instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'loadoutValue': instance.loadoutValue,
      'weapon': instance.weapon,
      'armor': instance.armor,
      'remaining': instance.remaining,
      'spent': instance.spent,
    };

PlayerScore _$PlayerScoreFromJson(Map<String, dynamic> json) => PlayerScore(
      subject: json['subject'] as String,
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$PlayerScoreToJson(PlayerScore instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'score': instance.score,
    };
