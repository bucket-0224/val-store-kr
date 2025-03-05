import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'package:dio/dio.dart' hide Headers;

import '../model/wallet_response.dart';

part 'wallet_remote.g.dart';

@injectable
@RestApi()
abstract class WalletRemote {
  @factoryMethod
  factory WalletRemote(@Named("DefaultDio") Dio dio, {
    @Named("BaseValApplicationUrl") String baseUrl
  }) = _WalletRemote;

  @GET('{region}.a.pvp.net/store/v1/wallet/{puuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<WalletResponse> getWalletStatus(
      @Header('Authorization') String authorizationToken,
      @Header('X-Riot-Entitlements-JWT') String entitlementToken,
      @Header('X-Riot-ClientPlatform') String clientPlatform,
      @Header("X-Riot-ClientVersion") String clientVersion,
      @Path("region") String region,
      @Path("puuid") String playerUUID
  );
}