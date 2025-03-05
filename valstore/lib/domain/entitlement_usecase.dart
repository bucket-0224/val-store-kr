
import 'package:injectable/injectable.dart';
import 'package:valstore/data/entitlement/model/entitlement_response.dart';
import 'package:valstore/data/entitlement/repository/entitlement_repository.dart';

@injectable
class EntitlementUseCase {
  final EntitlementRepository entitlementRepository;

  EntitlementUseCase(this.entitlementRepository);

  Future<Entitlement> getEntitlementToken(String authorizationToken) {
    return entitlementRepository.getEntitlementToken("Bearer $authorizationToken");
  }
}