// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchHistory _$MatchHistoryFromJson(Map<String, dynamic> json) => MatchHistory(
      subject: json['Subject'] as String,
      beginIndex: (json['BeginIndex'] as num).toInt(),
      endIndex: (json['EndIndex'] as num).toInt(),
      total: (json['Total'] as num).toInt(),
      history: (json['History'] as List<dynamic>)
          .map((e) => MatchHistoryInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchHistoryToJson(MatchHistory instance) =>
    <String, dynamic>{
      'Subject': instance.subject,
      'BeginIndex': instance.beginIndex,
      'EndIndex': instance.endIndex,
      'Total': instance.total,
      'History': instance.history,
    };

MatchHistoryInfo _$MatchHistoryInfoFromJson(Map<String, dynamic> json) =>
    MatchHistoryInfo(
      matchID: json['MatchID'] as String,
      gameStartTime: (json['GameStartTime'] as num).toInt(),
      queueID: json['QueueID'] as String,
    );

Map<String, dynamic> _$MatchHistoryInfoToJson(MatchHistoryInfo instance) =>
    <String, dynamic>{
      'MatchID': instance.matchID,
      'GameStartTime': instance.gameStartTime,
      'QueueID': instance.queueID,
    };
