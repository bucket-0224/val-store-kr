import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/components/match_history_card_components.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';

import '../bottomsheet/login_bottom_sheet.dart';

class MatchHistoryPage extends StatefulWidget {
  final String title;

  const MatchHistoryPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => MatchHistoryPageState(title: title);
}

class MatchHistoryPageState extends BaseStatefulWidget<MainViewModel> {
  MatchHistoryPageState({required this.title});

  final String title;

  @override
  Widget onBuildWidget(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            viewModel.isLoadingMatchHistories ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 16)),
                CupertinoActivityIndicator(),
                Padding(padding: EdgeInsets.only(bottom: 4)),
                Text(
                  '매칭 기록 로딩 중..',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(bottom: 16)),
              ],
            ) : Container(),
            Expanded(
                child: ListView.builder(
                  itemCount: viewModel.matchesInfoList.length,
                  itemBuilder: (context, index) {
                    return MatchHistoryCard(item: viewModel.matchesInfoList[index]);
                  },
                )
            ),
            const Padding(padding: EdgeInsets.only(bottom: 16)),
          ],
        )
    );
  }
}
