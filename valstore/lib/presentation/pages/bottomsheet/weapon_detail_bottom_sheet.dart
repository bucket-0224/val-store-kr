import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:valstore/data/skin/model/weapon_skin_response.dart';
import 'package:valstore/presentation/pages/bottomsheet/page/weapon_detail_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../viewmodel/main_viewmodel.dart';

void showWeaponDetailBottomSheet(BuildContext context, WeaponSkinDetail weaponSkinDetail, List<Chroma> chromaList, List<Level> weaponLevels, MainViewModel viewModel) async {

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: const Color.fromRGBO(22, 21, 25, 1.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => WeaponDetailPage(weaponSkinDetail : weaponSkinDetail, chromaList : chromaList, weaponLevels: weaponLevels,),
  );
}