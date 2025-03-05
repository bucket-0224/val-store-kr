import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:valstore/data/match/model/match_history_response.dart';

import '../../util/util.dart';
import 'package:dio/dio.dart' hide Headers;

import '../model/match_history_detail_response.dart';

part 'match_remote.g.dart';

@injectable
@RestApi()
abstract class MatchRemote {
  @factoryMethod
  factory MatchRemote(@Named("DefaultDio") Dio dio, {
    @Named("BaseValApplicationUrl") String baseUrl
  }) = _MatchRemote;

  @GET('{region}.a.pvp.net/match-history/v1/history/{puuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<MatchHistory> getMatchHistories(
      @Header('Authorization') String authorizationToken,
      @Header('X-Riot-Entitlements-JWT') String entitlementToken,
      @Header('X-Riot-ClientPlatform') String clientPlatform,
      @Header("X-Riot-ClientVersion") String clientVersion,
      @Path("region") String region,
      @Path("puuid") String playerUUID,
  );

  @GET('{region}.a.pvp.net/match-details/v1/matches/{matchId}')
  @Headers({'Content-Type': 'application/json'})
  Future<MatchHistoryDetailResponse> getDetailMatchHistory(
      @Header('Authorization') String authorizationToken,
      @Header('X-Riot-Entitlements-JWT') String entitlementToken,
      @Header('X-Riot-ClientPlatform') String clientPlatform,
      @Header("X-Riot-ClientVersion") String clientVersion,
      @Path("region") String region,
      @Path("matchId") String matchId,
  );
}