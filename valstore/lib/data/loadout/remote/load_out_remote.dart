import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:valstore/data/loadout/model/load_out_response.dart';

import '../../util/util.dart';
import 'package:dio/dio.dart' hide Headers;

part 'load_out_remote.g.dart';

@injectable
@RestApi()
abstract class LoadOutRemote {
  @factoryMethod
  factory LoadOutRemote(@Named("DefaultDio") Dio dio, {
    @Named("BaseValApplicationUrl") String baseUrl
  }) = _LoadOutRemote;

  @GET('{region}.a.pvp.net/personalization/v2/players/{puuid}/playerloadout')
  @Headers({'Content-Type': 'application/json'})
  Future<PlayerLoadOutResponse> getPlayerLoadOut(
      @Header('Authorization') String authorizationToken,
      @Header('X-Riot-Entitlements-JWT') String entitlementToken,
      @Header('X-Riot-ClientPlatform') String clientPlatform,
      @Header("X-Riot-ClientVersion") String clientVersion,
      @Path("region") String region,
      @Path("puuid") String playerUUID,
  );
}