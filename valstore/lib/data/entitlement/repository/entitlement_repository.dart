import 'package:valstore/data/entitlement/model/entitlement_response.dart';

abstract class EntitlementRepository {
  Future<Entitlement> getEntitlementToken(String authorizationToken);
}