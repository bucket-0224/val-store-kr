import 'package:injectable/injectable.dart';
import 'package:valstore/data/entitlement/model/entitlement_response.dart';
import 'package:valstore/data/entitlement/remote/entitlement_remote.dart';
import 'package:valstore/data/entitlement/repository/entitlement_repository.dart';

@Injectable(as: EntitlementRepository)
class SimpleEntitlementRepository extends EntitlementRepository {
  final EntitlementRemote _entitlementRemote;

  SimpleEntitlementRepository(this._entitlementRemote);

  @override
  Future<Entitlement> getEntitlementToken(String authorizationToken) {
    return _entitlementRemote.getEntitlementToken(authorizationToken);
  }
}