// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_skin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponSkinResponse _$WeaponSkinResponseFromJson(Map<String, dynamic> json) =>
    WeaponSkinResponse(
      status: (json['status'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => WeaponSkinDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeaponSkinResponseToJson(WeaponSkinResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

WeaponSkinDetail _$WeaponSkinDetailFromJson(Map<String, dynamic> json) =>
    WeaponSkinDetail(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      themeUuid: json['themeUuid'] as String?,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      wallpaper: json['wallpaper'] as String?,
      assetPath: json['assetPath'] as String?,
      chromas: (json['chromas'] as List<dynamic>)
          .map((e) => Chroma.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>)
          .map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeaponSkinDetailToJson(WeaponSkinDetail instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'themeUuid': instance.themeUuid,
      'contentTierUuid': instance.contentTierUuid,
      'displayIcon': instance.displayIcon,
      'wallpaper': instance.wallpaper,
      'assetPath': instance.assetPath,
      'chromas': instance.chromas.map((e) => e.toJson()).toList(),
      'levels': instance.levels.map((e) => e.toJson()).toList(),
    };

Chroma _$ChromaFromJson(Map<String, dynamic> json) => Chroma(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String?,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$ChromaToJson(Chroma instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'fullRender': instance.fullRender,
      'swatch': instance.swatch,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
    };

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'levelItem': instance.levelItem,
      'displayIcon': instance.displayIcon,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
    };
