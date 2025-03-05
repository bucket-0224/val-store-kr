import 'package:injectable/injectable.dart';
import 'package:valstore/data/paid/model/wallet_response.dart';
import 'package:valstore/data/paid/repository/wallet_repository.dart';

import '../data/util/util.dart';

@injectable
class WalletUseCase {
  final WalletRepository walletRepository;

  WalletUseCase(this.walletRepository);

  Future<WalletResponse> getWalletStatus(
      String authorizationToken,
      String entitlementToken,
      String region,
      String playerUUID
  ) {
    return walletRepository.getWalletStatus(
        "Bearer $authorizationToken",
        entitlementToken,
        exampleClientPlatform,
        exampleClientVersion,
        region,
        playerUUID
    );
  }
}