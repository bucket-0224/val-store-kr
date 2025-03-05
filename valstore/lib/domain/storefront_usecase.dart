import 'package:injectable/injectable.dart';
import 'package:valstore/data/storefront/model/storefront_response.dart';
import 'package:valstore/data/storefront/repository/storefront_repository.dart';
import 'package:valstore/data/util/util.dart';

@injectable
class StorefrontUseCase {
  final StorefrontRepository storefrontRepository;

  StorefrontUseCase(this.storefrontRepository);

  Future<StorefrontResponse> getStorefront(
      String authorizationToken,
      String entitlementToken,
      String region,
      String playerUUID
  ) {
    return storefrontRepository.getStoreFront(
        "Bearer $authorizationToken",
        entitlementToken,
        exampleClientPlatform,
        exampleClientVersion,
        region,
        playerUUID,
    );
  }
}