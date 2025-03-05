import 'package:injectable/injectable.dart';
import 'package:valstore/data/match/model/match_history_detail_response.dart';
import 'package:valstore/data/match/model/match_history_response.dart';
import 'package:valstore/data/match/repository/match_repository.dart';

import '../data/util/util.dart';

@injectable
class MatchUseCase {
  final MatchRepository matchRepository;

  MatchUseCase(this.matchRepository);

  Future<MatchHistory> getMatchHistories(
      String authorizationToken,
      String entitlementToken,
      String region,
      String playerUUID
  ) {
    return matchRepository.getMatchHistories(
      "Bearer $authorizationToken",
      entitlementToken,
      exampleClientPlatform,
      exampleClientVersion,
      region,
      playerUUID,
    );
  }

  Future<MatchHistoryDetailResponse> getDetailMatchHistory(
      String authorizationToken,
      String entitlementToken,
      String region,
      String matchId
  ) {
    return matchRepository.getDetailMatchHistory(
      "Bearer $authorizationToken",
      entitlementToken,
      exampleClientPlatform,
      exampleClientVersion,
      region,
      matchId,
    );
  }
}