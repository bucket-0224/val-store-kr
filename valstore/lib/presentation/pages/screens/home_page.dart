import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valstore/data/entitlement/model/entitlement_response.dart';
import 'package:valstore/data/paid/model/wallet_response.dart';
import 'package:valstore/data/skin/model/skin_response.dart';
import 'package:valstore/data/storefront/remote/storefront_remote.dart';
import 'package:valstore/domain/skin_usecase.dart';
import 'package:valstore/domain/storefront_usecase.dart';
import 'package:valstore/domain/wallet_usecase.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/components/skin_card_components.dart';
import 'package:valstore/presentation/util.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';

import '../../../domain/entitlement_usecase.dart';
import '../bottomsheet/login_bottom_sheet.dart';
import '../bottomsheet/page/login_rso_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseWidget<MainViewModel, HomePage> {

  @override
  void onPresented() async {
    viewModel.startRemainingToRotation();
  }

  @override
  Widget onBuildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            viewModel.isLoadingTodayShop ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 8)),
                CupertinoActivityIndicator(),
                Padding(padding: EdgeInsets.only(bottom: 4)),
                Text(
                  '오늘의 상점 로딩 중..',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(bottom: 16)),
              ],
            ) : Container(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/ic_valorant_point.png", width: 16, height: 16,),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "${viewModel.walletBalances.isEmpty ? "0" : viewModel.walletBalances[0]}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.only(left: 8)),
                Image.asset("assets/ic_radianite_point.png", width: 16, height: 16,),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "${viewModel.walletBalances.isEmpty ? "0" : viewModel.walletBalances[2]}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.only(left: 8)),
                Image.asset("assets/ic_kingdom_point.png", width: 16, height: 16,),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "${viewModel.walletBalances.isEmpty ? "0" : viewModel.walletBalances[1]}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 8)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(viewModel.remainingTimeText, style: const TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 8)),
            Expanded(
                child: ListView.builder(
                  itemCount: viewModel.skinList.length,
                  itemBuilder: (context, index) {
                    return SkinCard(item: viewModel.skinList[index]);
                  },
                )
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
