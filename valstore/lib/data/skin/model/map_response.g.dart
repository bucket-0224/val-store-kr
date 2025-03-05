// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapResponse _$MapResponseFromJson(Map<String, dynamic> json) => MapResponse(
      status: (json['status'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => MapInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapResponseToJson(MapResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

MapInfo _$MapInfoFromJson(Map<String, dynamic> json) => MapInfo(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      narrativeDescription: json['narrativeDescription'] as String?,
      tacticalDescription: json['tacticalDescription'] as String?,
      coordinates: json['coordinates'] as String?,
      displayIcon: json['displayIcon'] as String?,
      listViewIcon: json['listViewIcon'] as String?,
      listViewIconTall: json['listViewIconTall'] as String?,
      splash: json['splash'] as String?,
      stylizedBackgroundImage: json['stylizedBackgroundImage'] as String?,
      premierBackgroundImage: json['premierBackgroundImage'] as String?,
      assetPath: json['assetPath'] as String?,
      mapUrl: json['mapUrl'] as String?,
      xMultiplier: (json['xMultiplier'] as num?)?.toDouble(),
      yMultiplier: (json['yMultiplier'] as num?)?.toDouble(),
      xScalarToAdd: (json['xScalarToAdd'] as num?)?.toDouble(),
      yScalarToAdd: (json['yScalarToAdd'] as num?)?.toDouble(),
      callouts: (json['callouts'] as List<dynamic>?)
          ?.map((e) => MapCallOut.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapInfoToJson(MapInfo instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'narrativeDescription': instance.narrativeDescription,
      'tacticalDescription': instance.tacticalDescription,
      'coordinates': instance.coordinates,
      'displayIcon': instance.displayIcon,
      'listViewIcon': instance.listViewIcon,
      'listViewIconTall': instance.listViewIconTall,
      'splash': instance.splash,
      'stylizedBackgroundImage': instance.stylizedBackgroundImage,
      'premierBackgroundImage': instance.premierBackgroundImage,
      'assetPath': instance.assetPath,
      'mapUrl': instance.mapUrl,
      'xMultiplier': instance.xMultiplier,
      'yMultiplier': instance.yMultiplier,
      'xScalarToAdd': instance.xScalarToAdd,
      'yScalarToAdd': instance.yScalarToAdd,
      'callouts': instance.callouts,
    };

MapCallOut _$MapCallOutFromJson(Map<String, dynamic> json) => MapCallOut(
      regionName: json['regionName'] as String?,
      superRegionName: json['superRegionName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MapCallOutToJson(MapCallOut instance) =>
    <String, dynamic>{
      'regionName': instance.regionName,
      'superRegionName': instance.superRegionName,
      'location': instance.location,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
