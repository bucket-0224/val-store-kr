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

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  runApp(const ValRankedApplication());
}

class ValRankedApplication extends StatelessWidget {
  
  const ValRankedApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainViewModel(
            getIt<EntitlementUseCase>(),
            getIt<StorefrontUseCase>(),
            getIt<SkinUseCase>(),
            getIt<WalletUseCase>(),
            getIt<MatchUseCase>(),
            getIt<SharedPreferences>(),
            getIt<LoadOutUseCase>(),
            getIt<PlayerInfoUseCase>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: MainPage(),
      ),
    );
  }
}