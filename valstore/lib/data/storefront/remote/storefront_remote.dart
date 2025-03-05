import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:valstore/data/storefront/model/storefront_response.dart';

import '../../util/util.dart';
import 'package:dio/dio.dart' hide Headers;

import '../model/storefront_request.dart';

part 'storefront_remote.g.dart';

@injectable
@RestApi()
abstract class StorefrontRemote {
  @factoryMethod
  factory StorefrontRemote(@Named("DefaultDio") Dio dio, {
    @Named("BaseValApplicationUrl") String baseUrl
  }) = _StorefrontRemote;

  @POST('{region}.a.pvp.net/store/v3/storefront/{puuid}')
  @Headers({'Content-Type': 'application/json'})
  Future<StorefrontResponse> getStorefront(
      @Header('Authorization') String authorizationToken,
      @Header('X-Riot-Entitlements-JWT') String entitlementToken,
      @Header('X-Riot-ClientPlatform') String clientPlatform,
      @Header("X-Riot-ClientVersion") String clientVersion,
      @Path("region") String region,
      @Path("puuid") String playerUUID,
      @Body() StorefrontRequest storefrontRequest
  );
}