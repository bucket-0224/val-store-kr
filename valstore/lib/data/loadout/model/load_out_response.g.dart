// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_out_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerLoadOutResponse _$PlayerLoadOutResponseFromJson(
        Map<String, dynamic> json) =>
    PlayerLoadOutResponse(
      subject: json['Subject'] as String?,
      version: (json['Version'] as num?)?.toInt(),
      guns: (json['Guns'] as List<dynamic>?)
          ?.map((e) => Gun.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprays: (json['Sprays'] as List<dynamic>?)
          ?.map((e) => Spray.fromJson(e as Map<String, dynamic>))
          .toList(),
      identity: json['Identity'] == null
          ? null
          : Identity.fromJson(json['Identity'] as Map<String, dynamic>),
      incognito: json['Incognito'] as bool?,
    );

Map<String, dynamic> _$PlayerLoadOutResponseToJson(
        PlayerLoadOutResponse instance) =>
    <String, dynamic>{
      'Subject': instance.subject,
      'Version': instance.version,
      'Guns': instance.guns,
      'Sprays': instance.sprays,
      'Identity': instance.identity,
      'Incognito': instance.incognito,
    };

Gun _$GunFromJson(Map<String, dynamic> json) => Gun(
      id: json['ID'] as String?,
      skinId: json['SkinID'] as String?,
      skinLevelId: json['SkinLevelID'] as String?,
      chromaId: json['ChromaID'] as String?,
      attachments: json['Attachments'] as List<dynamic>?,
      charmInstanceId: json['CharmInstanceID'] as String?,
      charmId: json['CharmID'] as String?,
      charmLevelId: json['CharmLevelID'] as String?,
    );

Map<String, dynamic> _$GunToJson(Gun instance) => <String, dynamic>{
      'ID': instance.id,
      'SkinID': instance.skinId,
      'SkinLevelID': instance.skinLevelId,
      'ChromaID': instance.chromaId,
      'Attachments': instance.attachments,
      'CharmInstanceID': instance.charmInstanceId,
      'CharmID': instance.charmId,
      'CharmLevelID': instance.charmLevelId,
    };

Spray _$SprayFromJson(Map<String, dynamic> json) => Spray(
      equipSlotId: json['EquipSlotID'] as String?,
      sprayId: json['SprayID'] as String?,
      sprayLevelId: json['SprayLevelID'] as String?,
    );

Map<String, dynamic> _$SprayToJson(Spray instance) => <String, dynamic>{
      'EquipSlotID': instance.equipSlotId,
      'SprayID': instance.sprayId,
      'SprayLevelID': instance.sprayLevelId,
    };

Identity _$IdentityFromJson(Map<String, dynamic> json) => Identity(
      playerCardId: json['PlayerCardID'] as String?,
      playerTitleId: json['PlayerTitleID'] as String?,
      accountLevel: (json['AccountLevel'] as num?)?.toInt(),
      preferredLevelBorderId: json['PreferredLevelBorderID'] as String?,
      hideAccountLevel: json['HideAccountLevel'] as bool?,
    );

Map<String, dynamic> _$IdentityToJson(Identity instance) => <String, dynamic>{
      'PlayerCardID': instance.playerCardId,
      'PlayerTitleID': instance.playerTitleId,
      'AccountLevel': instance.accountLevel,
      'PreferredLevelBorderID': instance.preferredLevelBorderId,
      'HideAccountLevel': instance.hideAccountLevel,
    };
