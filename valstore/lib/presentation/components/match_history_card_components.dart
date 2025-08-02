import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valstore/data/match/model/match_history_detail_response.dart';

class MatchHistoryCard extends StatelessWidget {
  final MatchHistoryDetailInfoResponse item;

  const MatchHistoryCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 84,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: NetworkImage(item.mapInfo?.stylizedBackgroundImage ?? ""),
              fit: BoxFit.cover
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(item.playedCharacterAvatar, width: 60, height: 60),
            const Padding(padding: EdgeInsets.only(left: 16)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                item.matchInfo.queueID.isNotEmpty ?
                  Text(
                    (item.matchInfo.queueID.substring(0, 1).toUpperCase() + item.matchInfo.queueID.substring(1, item.matchInfo.queueID.length).toLowerCase()),
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ) : const Text(
                  "Unknown",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Text(
                  item.teams.isNotEmpty ? "${item.teams[1].roundsWon} : ${item.teams[0].roundsWon}" : "0 : 0",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${item.mapInfo?.displayName}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                )
              ],
            ),
            const Spacer(flex: 1,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "ACS ${((item.player.stats?.score ?? 0) / (item.player.stats?.roundsPlayed ?? 0)).round()}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "KDA ${item.player.stats?.kills is int ? item.player.stats?.kills : 0} / ${item.player.stats?.deaths} / ${item.player.stats?.assists}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(left: 16)),
            Container(
              width: 4,
              height: 48,
              color: item.player.teamId == item.teams[0].teamId && item.teams[0].won || item.player.teamId == item.teams[1].teamId && item.teams[1].won ? Colors.blue : Colors.red,
            )
          ],
        ),
      ),
    );
  }
}