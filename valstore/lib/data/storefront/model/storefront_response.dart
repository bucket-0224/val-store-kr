import 'package:json_annotation/json_annotation.dart';

part 'storefront_response.g.dart';

@JsonSerializable()
class StorefrontResponse {
  @JsonKey(name: "SkinsPanelLayout")
  final SkinsPanelLayout? skinsPanelLayout;
  @JsonKey(name: "BonusStore")
  final BonusStore? bonusStore;
  @JsonKey(name: "AccessoryStore")
  final AccessoryStore? accessoryStore;

  StorefrontResponse({
    required this.skinsPanelLayout,
    required this.bonusStore,
    required this.accessoryStore,
  });

  factory StorefrontResponse.fromJson(Map<String, dynamic> json) => _$StorefrontResponseFromJson(json);
  Map<String, dynamic> toJson() => _$StorefrontResponseToJson(this);
}

@JsonSerializable()
class SkinsPanelLayout {
  @JsonKey(name: "SingleItemOffers")
  final List<String>? singleItemOffers;
  @JsonKey(name: "SingleItemStoreOffers")
  final List<SingleItemStoreOffer>? singleItemStoreOffers;
  @JsonKey(name: "SingleItemOffersRemainingDurationInSeconds")
  final int? singleItemOffersRemainingDurationInSeconds;

  SkinsPanelLayout({
    required this.singleItemOffers,
    required this.singleItemStoreOffers,
    required this.singleItemOffersRemainingDurationInSeconds,
  });

  factory SkinsPanelLayout.fromJson(Map<String, dynamic> json) => _$SkinsPanelLayoutFromJson(json);
  Map<String, dynamic> toJson() => _$SkinsPanelLayoutToJson(this);
}

@JsonSerializable()
class SingleItemStoreOffer {
  @JsonKey(name: "OfferID")
  final String? offerID;
  @JsonKey(name: "IsDirectPurchase")
  final bool? isDirectPurchase;
  @JsonKey(name: "StartDate")
  final String? startDate;
  @JsonKey(name: "Cost")
  final Map<String, int>? cost;
  @JsonKey(name: "Rewards")
  final List<Reward>? rewards;

  SingleItemStoreOffer({
    required this.offerID,
    required this.isDirectPurchase,
    required this.startDate,
    required this.cost,
    required this.rewards,
  });

  factory SingleItemStoreOffer.fromJson(Map<String, dynamic> json) => _$SingleItemStoreOfferFromJson(json);
  Map<String, dynamic> toJson() => _$SingleItemStoreOfferToJson(this);
}

@JsonSerializable()
class Reward {
  @JsonKey(name: "ItemTypeID")
  final String? itemTypeID;
  @JsonKey(name: "ItemID")
  final String? itemID;
  @JsonKey(name: "Quantity")
  final int? quantity;

  Reward({required this.itemTypeID, required this.itemID, required this.quantity});

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
  Map<String, dynamic> toJson() => _$RewardToJson(this);
}

@JsonSerializable()
class UpgradeCurrencyStore {
  @JsonKey(name: "UpgradeCurrencyOffers")
  final List<UpgradeCurrencyOffer> upgradeCurrencyOffers;

  UpgradeCurrencyStore({required this.upgradeCurrencyOffers});

  factory UpgradeCurrencyStore.fromJson(Map<String, dynamic> json) => _$UpgradeCurrencyStoreFromJson(json);
  Map<String, dynamic> toJson() => _$UpgradeCurrencyStoreToJson(this);
}

@JsonSerializable()
class UpgradeCurrencyOffer {
  @JsonKey(name: "OfferID")
  final String? offerID;
  @JsonKey(name: "StorefrontItemID")
  final String? storefrontItemID;
  @JsonKey(name: "Offer")
  final Offer? offer;
  @JsonKey(name: "DiscountedPercent")
  final double? discountedPercent;

  UpgradeCurrencyOffer({
    required this.offerID,
    required this.storefrontItemID,
    required this.offer,
    required this.discountedPercent,
  });

  factory UpgradeCurrencyOffer.fromJson(Map<String, dynamic> json) => _$UpgradeCurrencyOfferFromJson(json);
  Map<String, dynamic> toJson() => _$UpgradeCurrencyOfferToJson(this);
}

@JsonSerializable()
class Offer {
  @JsonKey(name: "OfferID")
  final String? offerID;
  @JsonKey(name: "IsDirectPurchase")
  final bool? isDirectPurchase;
  @JsonKey(name: "StartDate")
  final String? startDate;
  @JsonKey(name: "Cost")
  final Map<String, int>? cost;
  @JsonKey(name: "Rewards")
  final List<Reward>? rewards;

  Offer({required this.offerID, required this.isDirectPurchase, required this.startDate, required this.cost, required this.rewards});

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
class BonusStore {
  @JsonKey(name: "BonusStoreOffers")
  final List<BonusStoreOffer>? bonusStoreOffers;
  @JsonKey(name: "BonusStoreRemainingDurationInSeconds")
  final int? bonusStoreRemainingDurationInSeconds;
  @JsonKey(name: "BonusStoreSecondsSinceItStarted")
  final int? bonusStoreSecondsSinceItStarted;

  BonusStore({required this.bonusStoreOffers, required this.bonusStoreRemainingDurationInSeconds, required this.bonusStoreSecondsSinceItStarted});

  factory BonusStore.fromJson(Map<String, dynamic> json) => _$BonusStoreFromJson(json);
  Map<String, dynamic> toJson() => _$BonusStoreToJson(this);
}

@JsonSerializable()
class BonusStoreOffer {
  @JsonKey(name: "BonusOfferID")
  final String? bonusOfferID;
  @JsonKey(name: "Offer")
  final Offer? offer;
  @JsonKey(name: "DiscountPercent")
  final int? discountPercent;
  @JsonKey(name: "DiscountCosts")
  final Map<String, int>? discountCosts;
  @JsonKey(name: "IsSeen")
  final bool? isSeen;

  BonusStoreOffer({
    required this.bonusOfferID,
    required this.offer,
    required this.discountPercent,
    required this.discountCosts,
    required this.isSeen,
  });

  factory BonusStoreOffer.fromJson(Map<String, dynamic> json) => _$BonusStoreOfferFromJson(json);
  Map<String, dynamic> toJson() => _$BonusStoreOfferToJson(this);
}

@JsonSerializable()
class AccessoryStore {
  @JsonKey(name: "AccessoryStoreOffers")
  final List<AccessoryStoreOffer>? accessoryStoreOffers;

  AccessoryStore({required this.accessoryStoreOffers});

  factory AccessoryStore.fromJson(Map<String, dynamic> json) => _$AccessoryStoreFromJson(json);
  Map<String, dynamic> toJson() => _$AccessoryStoreToJson(this);
}

@JsonSerializable()
class AccessoryStoreOffer {
  @JsonKey(name: "Offer")
  final Offer? offer;
  @JsonKey(name: "ContractID")
  final String? contractID;

  AccessoryStoreOffer({required this.offer, required this.contractID});

  factory AccessoryStoreOffer.fromJson(Map<String, dynamic> json) => _$AccessoryStoreOfferFromJson(json);
  Map<String, dynamic> toJson() => _$AccessoryStoreOfferToJson(this);
}
