// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storefront_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorefrontResponse _$StorefrontResponseFromJson(Map<String, dynamic> json) =>
    StorefrontResponse(
      skinsPanelLayout: json['SkinsPanelLayout'] == null
          ? null
          : SkinsPanelLayout.fromJson(
              json['SkinsPanelLayout'] as Map<String, dynamic>),
      bonusStore: json['BonusStore'] == null
          ? null
          : BonusStore.fromJson(json['BonusStore'] as Map<String, dynamic>),
      accessoryStore: json['AccessoryStore'] == null
          ? null
          : AccessoryStore.fromJson(
              json['AccessoryStore'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorefrontResponseToJson(StorefrontResponse instance) =>
    <String, dynamic>{
      'SkinsPanelLayout': instance.skinsPanelLayout,
      'BonusStore': instance.bonusStore,
      'AccessoryStore': instance.accessoryStore,
    };

SkinsPanelLayout _$SkinsPanelLayoutFromJson(Map<String, dynamic> json) =>
    SkinsPanelLayout(
      singleItemOffers: (json['SingleItemOffers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      singleItemStoreOffers: (json['SingleItemStoreOffers'] as List<dynamic>?)
          ?.map((e) => SingleItemStoreOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
      singleItemOffersRemainingDurationInSeconds:
          (json['SingleItemOffersRemainingDurationInSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SkinsPanelLayoutToJson(SkinsPanelLayout instance) =>
    <String, dynamic>{
      'SingleItemOffers': instance.singleItemOffers,
      'SingleItemStoreOffers': instance.singleItemStoreOffers,
      'SingleItemOffersRemainingDurationInSeconds':
          instance.singleItemOffersRemainingDurationInSeconds,
    };

SingleItemStoreOffer _$SingleItemStoreOfferFromJson(
        Map<String, dynamic> json) =>
    SingleItemStoreOffer(
      offerID: json['OfferID'] as String?,
      isDirectPurchase: json['IsDirectPurchase'] as bool?,
      startDate: json['StartDate'] as String?,
      cost: (json['Cost'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      rewards: (json['Rewards'] as List<dynamic>?)
          ?.map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SingleItemStoreOfferToJson(
        SingleItemStoreOffer instance) =>
    <String, dynamic>{
      'OfferID': instance.offerID,
      'IsDirectPurchase': instance.isDirectPurchase,
      'StartDate': instance.startDate,
      'Cost': instance.cost,
      'Rewards': instance.rewards,
    };

Reward _$RewardFromJson(Map<String, dynamic> json) => Reward(
      itemTypeID: json['ItemTypeID'] as String?,
      itemID: json['ItemID'] as String?,
      quantity: (json['Quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'ItemTypeID': instance.itemTypeID,
      'ItemID': instance.itemID,
      'Quantity': instance.quantity,
    };

UpgradeCurrencyStore _$UpgradeCurrencyStoreFromJson(
        Map<String, dynamic> json) =>
    UpgradeCurrencyStore(
      upgradeCurrencyOffers: (json['UpgradeCurrencyOffers'] as List<dynamic>)
          .map((e) => UpgradeCurrencyOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpgradeCurrencyStoreToJson(
        UpgradeCurrencyStore instance) =>
    <String, dynamic>{
      'UpgradeCurrencyOffers': instance.upgradeCurrencyOffers,
    };

UpgradeCurrencyOffer _$UpgradeCurrencyOfferFromJson(
        Map<String, dynamic> json) =>
    UpgradeCurrencyOffer(
      offerID: json['OfferID'] as String?,
      storefrontItemID: json['StorefrontItemID'] as String?,
      offer: json['Offer'] == null
          ? null
          : Offer.fromJson(json['Offer'] as Map<String, dynamic>),
      discountedPercent: (json['DiscountedPercent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpgradeCurrencyOfferToJson(
        UpgradeCurrencyOffer instance) =>
    <String, dynamic>{
      'OfferID': instance.offerID,
      'StorefrontItemID': instance.storefrontItemID,
      'Offer': instance.offer,
      'DiscountedPercent': instance.discountedPercent,
    };

Offer _$OfferFromJson(Map<String, dynamic> json) => Offer(
      offerID: json['OfferID'] as String?,
      isDirectPurchase: json['IsDirectPurchase'] as bool?,
      startDate: json['StartDate'] as String?,
      cost: (json['Cost'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      rewards: (json['Rewards'] as List<dynamic>?)
          ?.map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OfferToJson(Offer instance) => <String, dynamic>{
      'OfferID': instance.offerID,
      'IsDirectPurchase': instance.isDirectPurchase,
      'StartDate': instance.startDate,
      'Cost': instance.cost,
      'Rewards': instance.rewards,
    };

BonusStore _$BonusStoreFromJson(Map<String, dynamic> json) => BonusStore(
      bonusStoreOffers: (json['BonusStoreOffers'] as List<dynamic>?)
          ?.map((e) => BonusStoreOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
      bonusStoreRemainingDurationInSeconds:
          (json['BonusStoreRemainingDurationInSeconds'] as num?)?.toInt(),
      bonusStoreSecondsSinceItStarted:
          (json['BonusStoreSecondsSinceItStarted'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BonusStoreToJson(BonusStore instance) =>
    <String, dynamic>{
      'BonusStoreOffers': instance.bonusStoreOffers,
      'BonusStoreRemainingDurationInSeconds':
          instance.bonusStoreRemainingDurationInSeconds,
      'BonusStoreSecondsSinceItStarted':
          instance.bonusStoreSecondsSinceItStarted,
    };

BonusStoreOffer _$BonusStoreOfferFromJson(Map<String, dynamic> json) =>
    BonusStoreOffer(
      bonusOfferID: json['BonusOfferID'] as String?,
      offer: json['Offer'] == null
          ? null
          : Offer.fromJson(json['Offer'] as Map<String, dynamic>),
      discountPercent: (json['DiscountPercent'] as num?)?.toInt(),
      discountCosts: (json['DiscountCosts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      isSeen: json['IsSeen'] as bool?,
    );

Map<String, dynamic> _$BonusStoreOfferToJson(BonusStoreOffer instance) =>
    <String, dynamic>{
      'BonusOfferID': instance.bonusOfferID,
      'Offer': instance.offer,
      'DiscountPercent': instance.discountPercent,
      'DiscountCosts': instance.discountCosts,
      'IsSeen': instance.isSeen,
    };

AccessoryStore _$AccessoryStoreFromJson(Map<String, dynamic> json) =>
    AccessoryStore(
      accessoryStoreOffers: (json['AccessoryStoreOffers'] as List<dynamic>?)
          ?.map((e) => AccessoryStoreOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AccessoryStoreToJson(AccessoryStore instance) =>
    <String, dynamic>{
      'AccessoryStoreOffers': instance.accessoryStoreOffers,
    };

AccessoryStoreOffer _$AccessoryStoreOfferFromJson(Map<String, dynamic> json) =>
    AccessoryStoreOffer(
      offer: json['Offer'] == null
          ? null
          : Offer.fromJson(json['Offer'] as Map<String, dynamic>),
      contractID: json['ContractID'] as String?,
    );

Map<String, dynamic> _$AccessoryStoreOfferToJson(
        AccessoryStoreOffer instance) =>
    <String, dynamic>{
      'Offer': instance.offer,
      'ContractID': instance.contractID,
    };
