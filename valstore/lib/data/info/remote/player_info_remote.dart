import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:valstore/data/info/model/player_info_response.dart';
import 'package:valstore/data/loadout/model/load_out_response.dart';

import '../../util/util.dart';
import 'package:dio/dio.dart' hide Headers;

part 'player_info_remote.g.dart';

@injectable
@RestApi()
abstract class PlayerInfoRemote {
  @factoryMethod
  factory PlayerInfoRemote(@Named("DefaultDio") Dio dio, {
    @Named("BaseRiotGamesUrl") String baseUrl
  }) = _PlayerInfoRemote;

  @GET('/userinfo')
  @Headers({'Content-Type': 'application/json'})
  Future<PlayerInfoResponse> getPlayerInfo(@Header('Authorization') String authorizationToken);
}