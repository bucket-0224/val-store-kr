import 'package:injectable/injectable.dart';
import 'package:valstore/data/loadout/model/load_out_response.dart';
import 'package:valstore/data/loadout/repository/load_out_repository.dart';

import '../data/loadout/repository/load_out_repository.dart';
import '../data/util/util.dart';

@injectable
class LoadOutUseCase {
  final LoadOutRepository loadOutRepository;

  LoadOutUseCase(this.loadOutRepository);

  Future<PlayerLoadOutResponse> getPlayerLoadOut(
      String authorizationToken,
      String entitlementToken,
      String region,
      String playerUUID
      ) {
    return loadOutRepository.getPlayerLoadOut(
      "Bearer $authorizationToken",
      entitlementToken,
      exampleClientPlatform,
      exampleClientVersion,
      region,
      playerUUID,
    );
  }
}