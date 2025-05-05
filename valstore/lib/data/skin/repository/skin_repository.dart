import 'package:valstore/data/entitlement/model/entitlement_response.dart';
import 'package:valstore/data/skin/model/agent_response.dart';
import 'package:valstore/data/skin/model/map_response.dart';
import 'package:valstore/data/skin/model/player_card_response.dart';
import 'package:valstore/data/skin/model/player_title_response.dart';
import 'package:valstore/data/skin/model/skin_response.dart';
import 'package:valstore/data/skin/model/weapon_skin_response.dart';

abstract class SkinRepository {
  Future<SkinResponse> getSkinInfo(String skinUUID);
  Future<AgentResponse> getAgentInfo(String agentUUID);
  Future<MapResponse> getMapsInfo();
  Future<PlayerCardResponse> getPlayerCard(String playerCardUUID);
  Future<PlayerTitleResponse> getPlayerTitle(String playerTitleUUID);
  Future<WeaponSkinResponse> getWeaponSkinList();
}