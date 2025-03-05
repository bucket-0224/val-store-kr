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
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final entitlementUseCase = getIt<EntitlementUseCase>();
  final storefrontUseCase = getIt<StorefrontUseCase>();
  final skinUseCase = getIt<SkinUseCase>();
  final walletUseCase = getIt<WalletUseCase>();
  final matchUseCase = getIt<MatchUseCase>();
  final loadOutUseCase = getIt<LoadOutUseCase>();
  final playerInfoUseCase = getIt<PlayerInfoUseCase>();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(ValRankedApplication(
    entitlementUseCase: entitlementUseCase,
    storefrontUseCase: storefrontUseCase,
    skinUseCase: skinUseCase,
    walletUseCase: walletUseCase,
    matchUseCase: matchUseCase,
    sharedPreferences: sharedPreferences,
    loadOutUseCase: loadOutUseCase,
    playerInfoUseCase: playerInfoUseCase,
  ));
}

class ValRankedApplication extends StatelessWidget {
  final EntitlementUseCase entitlementUseCase;
  final StorefrontUseCase storefrontUseCase;
  final SkinUseCase skinUseCase;
  final WalletUseCase walletUseCase;
  final MatchUseCase matchUseCase;
  final LoadOutUseCase loadOutUseCase;
  final SharedPreferences sharedPreferences;
  final PlayerInfoUseCase playerInfoUseCase;
  
  const ValRankedApplication({
    super.key,
    required this.entitlementUseCase,
    required this.storefrontUseCase,
    required this.skinUseCase,
    required this.walletUseCase,
    required this.matchUseCase,
    required this.sharedPreferences,
    required this.loadOutUseCase,
    required this.playerInfoUseCase
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark, // 다크 테마 활성화
      theme: ThemeData.light(), // 기본 라이트 테마
      darkTheme: ThemeData.dark(), // 다크 테마 추가
      home: ChangeNotifierProvider<MainViewModel>(
          create: (_) => MainViewModel(
            entitlementUseCase,
            storefrontUseCase,
            skinUseCase,
            walletUseCase,
            matchUseCase,
            sharedPreferences,
            loadOutUseCase,
            playerInfoUseCase
          ),
          child: const MainPage(),
      ),
    );
  }
}