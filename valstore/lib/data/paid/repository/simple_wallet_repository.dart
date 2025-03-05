import 'package:injectable/injectable.dart';
import 'package:valstore/data/paid/model/wallet_response.dart';
import 'package:valstore/data/paid/remote/wallet_remote.dart';
import 'package:valstore/data/paid/repository/wallet_repository.dart';

@Injectable(as : WalletRepository)
class SimpleWalletRepository extends WalletRepository {
  final WalletRemote walletRemote;

  SimpleWalletRepository(this.walletRemote);

  @override
  Future<WalletResponse> getWalletStatus(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  ) {
    return walletRemote.getWalletStatus(
        authorizationToken,
        entitlementToken,
        clientPlatform,
        clientVersion,
        region,
        playerUUID
    );
  }
}