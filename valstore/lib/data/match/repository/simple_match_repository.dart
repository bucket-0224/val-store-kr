import 'package:injectable/injectable.dart';
import 'package:valstore/data/match/model/match_history_response.dart';

import '../model/match_history_detail_response.dart';
import '../remote/match_remote.dart';
import 'match_repository.dart';

@Injectable(as : MatchRepository)
class SimpleMatchRepository extends MatchRepository {
  final MatchRemote matchRemote;

  SimpleMatchRepository(this.matchRemote);

  @override
  Future<MatchHistoryDetailResponse> getDetailMatchHistory(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String matchId
  ) {
    return matchRemote.getDetailMatchHistory(
        authorizationToken,
        entitlementToken,
        clientPlatform,
        clientVersion,
        region,
        matchId
    );
  }

  @override
  Future<MatchHistory> getMatchHistories(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  ) {
    return matchRemote.getMatchHistories(
        authorizationToken,
        entitlementToken,
        clientPlatform,
        clientVersion,
        region,
        playerUUID
    );
  }
}