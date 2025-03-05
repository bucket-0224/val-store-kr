// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_title_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerTitleResponse _$PlayerTitleResponseFromJson(Map<String, dynamic> json) =>
    PlayerTitleResponse(
      status: (json['status'] as num).toInt(),
      data: PlayerTitle.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerTitleResponseToJson(
        PlayerTitleResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

PlayerTitle _$PlayerTitleFromJson(Map<String, dynamic> json) => PlayerTitle(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      titleText: json['titleText'] as String?,
      isHiddenIfNotOwned: json['isHiddenIfNotOwned'] as bool?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$PlayerTitleToJson(PlayerTitle instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'titleText': instance.titleText,
      'isHiddenIfNotOwned': instance.isHiddenIfNotOwned,
      'assetPath': instance.assetPath,
    };
