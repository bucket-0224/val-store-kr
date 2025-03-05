import 'package:injectable/injectable.dart';
import 'package:valstore/data/storefront/model/storefront_request.dart';
import 'package:valstore/data/storefront/model/storefront_response.dart';
import 'package:valstore/data/storefront/remote/storefront_remote.dart';
import 'package:valstore/data/storefront/repository/storefront_repository.dart';

@Injectable(as : StorefrontRepository)
class SimpleStorefrontRepository extends StorefrontRepository {
  final StorefrontRemote storefrontRemote;

  SimpleStorefrontRepository(this.storefrontRemote);

  @override
  Future<StorefrontResponse> getStoreFront(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  ) {
    return storefrontRemote.getStorefront(
        authorizationToken,
        entitlementToken,
        clientPlatform,
        clientVersion,
        region,
        playerUUID,
        StorefrontRequest()
    );
  }

}