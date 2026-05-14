import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/components/bonus_card_components.dart';

import '../../../data/skin/model/weapon_skin_response.dart';
import '../../components/skin_card_components.dart';
import '../../viewmodel/main_viewmodel.dart';
import '../bottomsheet/weapon_detail_bottom_sheet.dart';

class BonusStorePage extends StatefulWidget {
  const BonusStorePage({super.key});

  @override
  State<StatefulWidget> createState() => BonusStorePageState();
}

class BonusStorePageState extends BaseStatefulWidget<MainViewModel> {
  @override
  void onPresented() { }

  @override
  Widget onBuildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text("Night Market"),
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
                  '야시장 상점 로딩 중..',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(bottom: 16)),
              ],
            ) : Container(),
            const Padding(padding: EdgeInsets.only(bottom: 16)),
            Expanded(
                child: ListView.builder(
                  itemCount: viewModel.skinList.length,
                  itemBuilder: (context, index) {
                    return BonusSkinCard(item: viewModel.bonusStoreList[index],
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