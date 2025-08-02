import 'package:json_annotation/json_annotation.dart';
import 'package:valstore/data/storefront/model/storefront_response.dart';

part 'skin_response.g.dart';

@JsonSerializable()
class SkinResponse {
  final int status;
  final SkinData data;

  SkinResponse({
    required this.status,
    required this.data,
  });

  factory SkinResponse.fromJson(Map<String, dynamic> json) => _$SkinResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SkinResponseToJson(this);
}

@JsonSerializable()
class SkinData {
  final String uuid;
  final String displayName;
  final String? levelItem;
  final String displayIcon;
  final String? streamedVideo;
  final String assetPath;

  SkinData({
    required this.uuid,
    required this.displayName,
    this.levelItem,
    required this.displayIcon,
    this.streamedVideo,
    required this.assetPath,
  });

  factory SkinData.fromJson(Map<String, dynamic> json) => _$SkinDataFromJson(json);
  Map<String, dynamic> toJson() => _$SkinDataToJson(this);
}

// local only.

@JsonSerializable()
class SkinDataInfo {
  final String uuid;
  final String displayName;
  final String? levelItem;
  final String displayIcon;
  final String? streamedVideo;
  final String assetPath;
  final SingleItemStoreOffer singleItemStoreOffer;
  final String startedDate;

  SkinDataInfo({
    required this.uuid,
    required this.displayName,
    this.levelItem,
    required this.displayIcon,
    this.streamedVideo,
    required this.assetPath,
    required this.singleItemStoreOffer,
    required this.startedDate
  });

  factory SkinDataInfo.fromJson(Map<String, dynamic> json) => _$SkinDataInfoFromJson(json);
  Map<String, dynamic> toJson() => _$SkinDataInfoToJson(this);
}

@JsonSerializable()
class BonusSkinDataInfo {
  final String uuid;
  final String displayName;
  final String? levelItem;
  final String displayIcon;
  final String? streamedVideo;
  final String assetPath;
  final BonusStoreOffer bonusStoreOffer;
  final String startedDate;

  BonusSkinDataInfo({
    required this.uuid,
    required this.displayName,
    this.levelItem,
    required this.displayIcon,
    this.streamedVideo,
    required this.assetPath,
    required this.bonusStoreOffer,
    required this.startedDate
  });

  factory BonusSkinDataInfo.fromJson(Map<String, dynamic> json) => _$BonusSkinDataInfoFromJson(json);
  Map<String, dynamic> toJson() => _$BonusSkinDataInfoToJson(this);
}