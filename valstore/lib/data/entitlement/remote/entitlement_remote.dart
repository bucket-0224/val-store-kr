import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:valstore/data/entitlement/model/entitlement_response.dart';

import '../../util/util.dart';
import 'package:dio/dio.dart' hide Headers;

part 'entitlement_remote.g.dart';

@injectable
@RestApi()
abstract class EntitlementRemote {
  @factoryMethod
  factory EntitlementRemote(@Named("DefaultDio") Dio dio, {
    @Named("BaseAuthenticationUrl") String baseUrl
  }) = _EntitlementRemote;

  @POST('/api/token/v1')
  @Headers({'Content-Type': 'application/json'})
  Future<Entitlement> getEntitlementToken(@Header('Authorization') String authorizationToken);
}