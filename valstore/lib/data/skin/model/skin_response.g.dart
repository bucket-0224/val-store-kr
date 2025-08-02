// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkinResponse _$SkinResponseFromJson(Map<String, dynamic> json) => SkinResponse(
      status: (json['status'] as num).toInt(),
      data: SkinData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SkinResponseToJson(SkinResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

SkinData _$SkinDataFromJson(Map<String, dynamic> json) => SkinData(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
    );

Map<String, dynamic> _$SkinDataToJson(SkinData instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'levelItem': instance.levelItem,
      'displayIcon': instance.displayIcon,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
    };

SkinDataInfo _$SkinDataInfoFromJson(Map<String, dynamic> json) => SkinDataInfo(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
      singleItemStoreOffer: SingleItemStoreOffer.fromJson(
          json['singleItemStoreOffer'] as Map<String, dynamic>),
      startedDate: json['startedDate'] as String,
    );

Map<String, dynamic> _$SkinDataInfoToJson(SkinDataInfo instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'levelItem': instance.levelItem,
      'displayIcon': instance.displayIcon,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
      'singleItemStoreOffer': instance.singleItemStoreOffer,
      'startedDate': instance.startedDate,
    };

BonusSkinDataInfo _$BonusSkinDataInfoFromJson(Map<String, dynamic> json) =>
    BonusSkinDataInfo(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
      bonusStoreOffer: BonusStoreOffer.fromJson(
          json['bonusStoreOffer'] as Map<String, dynamic>),
      startedDate: json['startedDate'] as String,
    );

Map<String, dynamic> _$BonusSkinDataInfoToJson(BonusSkinDataInfo instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'levelItem': instance.levelItem,
      'displayIcon': instance.displayIcon,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
      'bonusStoreOffer': instance.bonusStoreOffer,
      'startedDate': instance.startedDate,
    };
