import 'package:injectable/injectable.dart';
import 'package:valstore/data/info/model/player_info_response.dart';
import 'package:valstore/data/info/repository/player_info_repository.dart';
import 'package:valstore/data/loadout/model/load_out_response.dart';
import '../data/loadout/repository/load_out_repository.dart';
import '../data/util/util.dart';

@injectable
class PlayerInfoUseCase {
  final PlayerInfoRepository playerInfoRepository;

  PlayerInfoUseCase(this.playerInfoRepository);

  Future<PlayerInfoResponse> getPlayerInfo(String authorizationToken) {
    return playerInfoRepository.getPlayerInfo("Bearer $authorizationToken");
  }
}