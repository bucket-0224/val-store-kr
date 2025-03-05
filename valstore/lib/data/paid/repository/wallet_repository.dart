import 'package:valstore/data/paid/model/wallet_response.dart';

abstract class WalletRepository {
  Future<WalletResponse> getWalletStatus(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  );
}