import 'package:valstore/data/info/model/player_info_response.dart';
import 'package:valstore/data/loadout/model/load_out_response.dart';

abstract class PlayerInfoRepository {
  Future<PlayerInfoResponse> getPlayerInfo(String authorizationToken);
}