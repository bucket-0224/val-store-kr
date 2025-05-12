import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valstore/domain/entitlement_usecase.dart';
import 'package:valstore/domain/load_out_usecase.dart';
import 'package:valstore/domain/match_usecase.dart';
import 'package:valstore/domain/player_info_usecase.dart';
import 'package:valstore/domain/skin_usecase.dart';
import 'package:valstore/domain/storefront_usecase.dart';
import 'package:valstore/domain/wallet_usecase.dart';
import 'package:valstore/presentation/di/di.dart';
import 'package:valstore/presentation/pages/main_page.dart';
import 'package:valstore/presentation/pages/screens/home_page.dart';
import 'package:valstore/presentation/pages/bottomsheet/page/login_rso_page.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();

    EntitlementUseCase entitlementUseCase = getIt<EntitlementUseCase>();
    StorefrontUseCase storefrontUseCase = getIt<StorefrontUseCase>();
    SkinUseCase skinUseCase = getIt<SkinUseCase>();
    WalletUseCase walletUseCase = getIt<WalletUseCase>();
    MatchUseCase matchUseCase = getIt<MatchUseCase>();
    LoadOutUseCase loadOutUseCase = getIt<LoadOutUseCase>();
    PlayerInfoUseCase playerInfoUseCase = getIt<PlayerInfoUseCase>();

    final sharedPreferences = await SharedPreferences.getInstance();

    if (!getIt.isRegistered<SharedPreferences>()) {
      getIt.registerSingleton<SharedPreferences>(sharedPreferences);
    }

    runApp(ValRankedApplication(
      entitlementUseCase: entitlementUseCase,
      storefrontUseCase: storefrontUseCase,
      skinUseCase: skinUseCase,
      walletUseCase: walletUseCase,
      matchUseCase: matchUseCase,
      sharedPreferencesUseCase: sharedPreferences,
      loadOutUseCase: loadOutUseCase,
      playerInfoUseCase: playerInfoUseCase,
    ));
  }, (error, stackTrace) {
    debugPrint('💥 Caught in zone: $error\n$stackTrace');
  });
}

class ValRankedApplication extends StatelessWidget {
  final EntitlementUseCase entitlementUseCase;
  final StorefrontUseCase storefrontUseCase;
  final SkinUseCase skinUseCase;
  final WalletUseCase walletUseCase;
  final MatchUseCase matchUseCase;
  final SharedPreferences sharedPreferencesUseCase;
  final LoadOutUseCase loadOutUseCase;
  final PlayerInfoUseCase playerInfoUseCase;

  const ValRankedApplication({super.key, required this.entitlementUseCase, required this.storefrontUseCase, required this.skinUseCase, required this.walletUseCase, required this.matchUseCase, required this.sharedPreferencesUseCase, required this.loadOutUseCase, required this.playerInfoUseCase});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(
        entitlementUseCase,
        storefrontUseCase,
        skinUseCase,
        walletUseCase,
        matchUseCase,
        sharedPreferencesUseCase,
        loadOutUseCase,
        playerInfoUseCase
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: const MainPage(),
      ),
    );
  }
}