import 'package:injectable/injectable.dart';
import 'package:valstore/data/info/model/player_info_response.dart';
import 'package:valstore/data/info/remote/player_info_remote.dart';
import 'package:valstore/data/info/repository/player_info_repository.dart';

@Injectable(as : PlayerInfoRepository)
class SimplePlayerInfoRepository extends PlayerInfoRepository {
  final PlayerInfoRemote playerInfoRemote;

  SimplePlayerInfoRepository(this.playerInfoRemote);

  @override
  Future<PlayerInfoResponse> getPlayerInfo(String authorizationToken) {
    return playerInfoRemote.getPlayerInfo(authorizationToken);
  }
}

