import 'package:injectable/injectable.dart';
import 'package:valstore/data/skin/model/agent_response.dart';
import 'package:valstore/data/skin/model/player_card_response.dart';
import 'package:valstore/data/skin/model/player_title_response.dart';
import 'package:valstore/data/skin/model/skin_response.dart';
import 'package:valstore/data/skin/repository/skin_repository.dart';

import '../data/skin/model/map_response.dart';

@injectable
class SkinUseCase {
  final SkinRepository skinRepository;

  SkinUseCase(this.skinRepository);

  Future<SkinResponse> getSkinInfo(String skinUUID) {
    return skinRepository.getSkinInfo(skinUUID);
  }

  Future<AgentResponse> getAgentInfo(String agentUUID) {
    return skinRepository.getAgentInfo(agentUUID);
  }

  Future<MapResponse> getMapsInfo() {
    return skinRepository.getMapsInfo();
  }

  Future<PlayerTitleResponse> getPlayerTitle(String playerTitleUUID) {
    return skinRepository.getPlayerTitle(playerTitleUUID);
  }

  Future<PlayerCardResponse> getPlayerCard(String playerCardUUID) {
    return skinRepository.getPlayerCard(playerCardUUID);
  }
}