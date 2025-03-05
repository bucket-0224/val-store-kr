import 'package:valstore/data/loadout/model/load_out_response.dart';

abstract class LoadOutRepository {
  Future<PlayerLoadOutResponse> getPlayerLoadOut(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  );
}