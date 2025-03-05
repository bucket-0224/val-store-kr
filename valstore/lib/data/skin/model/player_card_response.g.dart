// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerCardResponse _$PlayerCardResponseFromJson(Map<String, dynamic> json) =>
    PlayerCardResponse(
      status: (json['status'] as num).toInt(),
      data: PlayerCard.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerCardResponseToJson(PlayerCardResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

PlayerCard _$PlayerCardFromJson(Map<String, dynamic> json) => PlayerCard(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      isHiddenIfNotOwned: json['isHiddenIfNotOwned'] as bool?,
      themeUuid: json['themeUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      smallArt: json['smallArt'] as String?,
      wideArt: json['wideArt'] as String?,
      largeArt: json['largeArt'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$PlayerCardToJson(PlayerCard instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'isHiddenIfNotOwned': instance.isHiddenIfNotOwned,
      'themeUuid': instance.themeUuid,
      'displayIcon': instance.displayIcon,
      'smallArt': instance.smallArt,
      'wideArt': instance.wideArt,
      'largeArt': instance.largeArt,
      'assetPath': instance.assetPath,
    };
