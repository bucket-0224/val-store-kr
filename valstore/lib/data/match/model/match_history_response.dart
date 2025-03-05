import 'package:json_annotation/json_annotation.dart';

part 'match_history_response.g.dart';

@JsonSerializable()
class MatchHistory {
  @JsonKey(name: "Subject")
  final String subject;
  @JsonKey(name: "BeginIndex")
  final int beginIndex;
  @JsonKey(name: "EndIndex")
  final int endIndex;
  @JsonKey(name: "Total")
  final int total;
  @JsonKey(name: "History")
  final List<MatchHistoryInfo> history;

  MatchHistory({
    required this.subject,
    required this.beginIndex,
    required this.endIndex,
    required this.total,
    required this.history,
  });

  factory MatchHistory.fromJson(Map<String, dynamic> json) => _$MatchHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$MatchHistoryToJson(this);
}

@JsonSerializable()
class MatchHistoryInfo {
  @JsonKey(name: "MatchID")
  final String matchID;
  @JsonKey(name: "GameStartTime")
  final int gameStartTime;
  @JsonKey(name: "QueueID")
  final String queueID;

  MatchHistoryInfo({
    required this.matchID,
    required this.gameStartTime,
    required this.queueID,
  });

  factory MatchHistoryInfo.fromJson(Map<String, dynamic> json) => _$MatchHistoryInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MatchHistoryInfoToJson(this);
}
