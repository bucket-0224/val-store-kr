import 'package:injectable/injectable.dart';
import 'package:valstore/data/loadout/model/load_out_response.dart';
import 'package:valstore/data/loadout/remote/load_out_remote.dart';
import 'package:valstore/data/loadout/repository/load_out_repository.dart';
import 'package:valstore/data/match/model/match_history_response.dart';

@Injectable(as : LoadOutRepository)
class SimpleLoadOutRepository extends LoadOutRepository {
  final LoadOutRemote loadOutRemote;

  SimpleLoadOutRepository(this.loadOutRemote);

  @override
  Future<PlayerLoadOutResponse> getPlayerLoadOut(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  ) {
    return loadOutRemote.getPlayerLoadOut(
        authorizationToken,
        entitlementToken,
        clientPlatform,
        clientVersion,
        region,
        playerUUID
    );
  }

}