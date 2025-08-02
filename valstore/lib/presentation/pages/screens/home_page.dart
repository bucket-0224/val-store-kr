import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:valstore/data/entitlement/model/entitlement_response.dart';
import 'package:valstore/data/paid/model/wallet_response.dart';
import 'package:valstore/data/skin/model/skin_response.dart';
import 'package:valstore/data/skin/model/weapon_skin_response.dart';
import 'package:valstore/data/storefront/remote/storefront_remote.dart';
import 'package:valstore/domain/skin_usecase.dart';
import 'package:valstore/domain/storefront_usecase.dart';
import 'package:valstore/domain/wallet_usecase.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/components/skin_card_components.dart';
import 'package:valstore/presentation/pages/bottomsheet/weapon_detail_bottom_sheet.dart';
import 'package:valstore/presentation/util.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';

import '../../../domain/entitlement_usecase.dart';
import '../bottomsheet/login_bottom_sheet.dart';
import '../bottomsheet/page/login_rso_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => HomePageState(title: title);
}

class HomePageState extends BaseStatefulWidget<MainViewModel> {
  HomePageState({
    required this.title
  });

  final String title;

  @override
  void onPresented() async {
    viewModel.startRemainingToRotation();
    await viewModel.getWeaponSkinList((message) {
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 16.0
      );
    });
  }

  @override
  Widget onBuildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(title),
        actions: [
          // SizedBox(
          //   width: 42,
          //   height: 42,
          //   child: IconButton(
          //       onPressed: () {},
          //       icon: Image.asset("assets/ic_night_market.png")
          //   ),
          // )
        ],
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
                Image.asset(
                  "assets/ic_valorant_point.png", width: 16, height: 16,),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "${viewModel.walletBalances.isEmpty ? "0" : viewModel
                      .walletBalances[0]}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.only(left: 8)),
                Image.asset(
                  "assets/ic_radianite_point.png", width: 16, height: 16,),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "${viewModel.walletBalances.isEmpty ? "0" : viewModel
                      .walletBalances[2]}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.only(left: 8)),
                Image.asset(
                  "assets/ic_kingdom_point.png", width: 16, height: 16,),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "${viewModel.walletBalances.isEmpty ? "0" : viewModel
                      .walletBalances[1]}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 8)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(viewModel.remainingTimeText,
                  style: const TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 8)),
            Expanded(
                child: ListView.builder(
                  itemCount: viewModel.skinList.length,
                  itemBuilder: (context, index) {
                    return SkinCard(item: viewModel.skinList[index],
                      onClickItem: (String uuid) async {
                        List<WeaponSkinDetail> findWeaponSkins = viewModel
                            .weaponsList.where((element) {
                          final mapped = element.levels.map((item) =>
                          item.uuid);

                          return mapped.contains(uuid);
                        }).toList();

                        if (findWeaponSkins.isNotEmpty) {
                          if(findWeaponSkins.first.levels.length > 1 && findWeaponSkins.first.chromas.length > 1) {
                            showWeaponDetailBottomSheet(context,
                                findWeaponSkins.first,
                                findWeaponSkins.first.chromas,
                                findWeaponSkins.first.levels,
                                viewModel
                            );
                          }
                        }else{
                          log("findWeapon : ${findWeaponSkins.isNotEmpty}");
                        }
                      },);
                  },
                )
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}