import 'package:valstore/data/storefront/model/storefront_response.dart';

abstract class StorefrontRepository {
  Future<StorefrontResponse> getStoreFront(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  );
}