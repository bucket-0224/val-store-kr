import 'package:injectable/injectable.dart';
import 'package:valstore/data/skin/model/agent_response.dart';
import 'package:valstore/data/skin/model/map_response.dart';
import 'package:valstore/data/skin/model/player_card_response.dart';
import 'package:valstore/data/skin/model/player_title_response.dart';
import 'package:valstore/data/skin/model/skin_response.dart';
import 'package:valstore/data/skin/remote/skin_remote.dart';
import 'package:valstore/data/skin/repository/skin_repository.dart';

@Injectable(as: SkinRepository)
class SimpleSkinRepository extends SkinRepository {
  final SkinRemote _skinRemote;

  SimpleSkinRepository(this._skinRemote);

  @override
  Future<SkinResponse> getSkinInfo(String skinUUID) {
    return _skinRemote.getSkinInfo(skinUUID);
  }

  @override
  Future<AgentResponse> getAgentInfo(String agentUUID) {
    return _skinRemote.getAgentInfo(agentUUID);
  }

  @override
  Future<MapResponse> getMapsInfo() {
    return _skinRemote.getMapsInfo();
  }

  @override
  Future<PlayerCardResponse> getPlayerCard(String playerCardUUID) {
    return _skinRemote.getPlayerCard(playerCardUUID);
  }

  @override
  Future<PlayerTitleResponse> getPlayerTitle(String playerTitleUUID) {
    return _skinRemote.getPlayerTitle(playerTitleUUID);
  }
}