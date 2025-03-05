import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:valstore/data/entitlement/model/entitlement_response.dart';
import 'package:valstore/data/skin/model/agent_response.dart';
import 'package:valstore/data/skin/model/map_response.dart';
import 'package:valstore/data/skin/model/player_card_response.dart';
import 'package:valstore/data/skin/model/skin_response.dart';

import '../../util/util.dart';
import 'package:dio/dio.dart' hide Headers;

import '../model/player_title_response.dart';

part 'skin_remote.g.dart';

@injectable
@RestApi()
abstract class SkinRemote {
  @factoryMethod
  factory SkinRemote(@Named("DefaultDio") Dio dio, { @Named("BaseSkinLevelUrl") String baseUrl}) = _SkinRemote;

  @GET('/v1/weapons/skinlevels/{skinUuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<SkinResponse> getSkinInfo(
      @Path("skinUuid") String skinUUID
  );

  @GET('/v1/agents/{agentUuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<AgentResponse> getAgentInfo(
      @Path("agentUuid") String agentUUID
  );

  @GET('/v1/maps')
  @Headers({'Content-Type': 'application/json'})
  Future<MapResponse> getMapsInfo();

  @GET('/v1/playertitles/{playerTitleUuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<PlayerTitleResponse> getPlayerTitle(
      @Path("playerTitleUuid") String playerTitleUUID
  );

  @GET('/v1/playercards/{playerCardUuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<PlayerCardResponse> getPlayerCard(
      @Path("playerCardUuid") String playerCardUUID
  );
}