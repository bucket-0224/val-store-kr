
import 'package:valstore/data/match/model/match_history_detail_response.dart';
import 'package:valstore/data/match/model/match_history_response.dart';

abstract class MatchRepository {
  Future<MatchHistory> getMatchHistories(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String playerUUID
  );

  Future<MatchHistoryDetailResponse> getDetailMatchHistory(
      String authorizationToken,
      String entitlementToken,
      String clientPlatform,
      String clientVersion,
      String region,
      String matchId
  );
}