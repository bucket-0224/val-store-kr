// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:valstore/data/base/di/dio_module.dart' as _i715;
import 'package:valstore/data/base/di/module.dart' as _i495;
import 'package:valstore/data/entitlement/remote/entitlement_remote.dart'
    as _i182;
import 'package:valstore/data/entitlement/repository/entitlement_repository.dart'
    as _i978;
import 'package:valstore/data/entitlement/repository/simple_entitlement_repository.dart'
    as _i1012;
import 'package:valstore/data/info/remote/player_info_remote.dart' as _i730;
import 'package:valstore/data/info/repository/player_info_repository.dart'
    as _i72;
import 'package:valstore/data/info/repository/simple_player_info_repository.dart'
    as _i820;
import 'package:valstore/data/loadout/remote/load_out_remote.dart' as _i746;
import 'package:valstore/data/loadout/repository/load_out_repository.dart'
    as _i368;
import 'package:valstore/data/loadout/repository/simple_load_out_repository.dart'
    as _i1048;
import 'package:valstore/data/match/remote/match_remote.dart' as _i771;
import 'package:valstore/data/match/repository/match_repository.dart' as _i82;
import 'package:valstore/data/match/repository/simple_match_repository.dart'
    as _i18;
import 'package:valstore/data/paid/remote/wallet_remote.dart' as _i593;
import 'package:valstore/data/paid/repository/simple_wallet_repository.dart'
    as _i507;
import 'package:valstore/data/paid/repository/wallet_repository.dart' as _i662;
import 'package:valstore/data/skin/remote/skin_remote.dart' as _i1017;
import 'package:valstore/data/skin/repository/simple_skin_repository.dart'
    as _i643;
import 'package:valstore/data/skin/repository/skin_repository.dart' as _i156;
import 'package:valstore/data/storefront/remote/storefront_remote.dart'
    as _i169;
import 'package:valstore/data/storefront/repository/simple_storefront_repository.dart'
    as _i703;
import 'package:valstore/data/storefront/repository/storefront_repository.dart'
    as _i412;
import 'package:valstore/domain/entitlement_usecase.dart' as _i81;
import 'package:valstore/domain/load_out_usecase.dart' as _i868;
import 'package:valstore/domain/match_usecase.dart' as _i1039;
import 'package:valstore/domain/player_info_usecase.dart' as _i630;
import 'package:valstore/domain/skin_usecase.dart' as _i123;
import 'package:valstore/domain/storefront_usecase.dart' as _i791;
import 'package:valstore/domain/wallet_usecase.dart' as _i921;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final baseModule = _$BaseModule();
    final dioModule = _$DioModule();
    gh.factory<String>(
      () => baseModule.baseValApplicationUrl,
      instanceName: 'BaseValApplicationUrl',
    );
    gh.factory<String>(
      () => baseModule.baseSkinLevelUrl,
      instanceName: 'BaseSkinLevelUrl',
    );
    gh.factory<String>(
      () => baseModule.baseAuthUrl,
      instanceName: 'BaseAuthenticationUrl',
    );
    gh.factory<String>(
      () => baseModule.baseRiotGameUrl,
      instanceName: 'BaseRiotGamesUrl',
    );
    gh.lazySingleton<_i361.Dio>(
      () => dioModule.provideDio(),
      instanceName: 'DefaultDio',
    );
    gh.factory<_i730.PlayerInfoRemote>(() => _i730.PlayerInfoRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseRiotGamesUrl'),
        ));
    gh.factory<_i1017.SkinRemote>(() => _i1017.SkinRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseSkinLevelUrl'),
        ));
    gh.factory<_i182.EntitlementRemote>(() => _i182.EntitlementRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseAuthenticationUrl'),
        ));
    gh.factory<_i978.EntitlementRepository>(() =>
        _i1012.SimpleEntitlementRepository(gh<_i182.EntitlementRemote>()));
    gh.factory<_i81.EntitlementUseCase>(
        () => _i81.EntitlementUseCase(gh<_i978.EntitlementRepository>()));
    gh.factory<_i156.SkinRepository>(
        () => _i643.SimpleSkinRepository(gh<_i1017.SkinRemote>()));
    gh.factory<_i169.StorefrontRemote>(() => _i169.StorefrontRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseValApplicationUrl'),
        ));
    gh.factory<_i771.MatchRemote>(() => _i771.MatchRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseValApplicationUrl'),
        ));
    gh.factory<_i593.WalletRemote>(() => _i593.WalletRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseValApplicationUrl'),
        ));
    gh.factory<_i746.LoadOutRemote>(() => _i746.LoadOutRemote(
          gh<_i361.Dio>(instanceName: 'DefaultDio'),
          baseUrl: gh<String>(instanceName: 'BaseValApplicationUrl'),
        ));
    gh.factory<_i662.WalletRepository>(
        () => _i507.SimpleWalletRepository(gh<_i593.WalletRemote>()));
    gh.factory<_i412.StorefrontRepository>(
        () => _i703.SimpleStorefrontRepository(gh<_i169.StorefrontRemote>()));
    gh.factory<_i72.PlayerInfoRepository>(
        () => _i820.SimplePlayerInfoRepository(gh<_i730.PlayerInfoRemote>()));
    gh.factory<_i82.MatchRepository>(
        () => _i18.SimpleMatchRepository(gh<_i771.MatchRemote>()));
    gh.factory<_i368.LoadOutRepository>(
        () => _i1048.SimpleLoadOutRepository(gh<_i746.LoadOutRemote>()));
    gh.factory<_i123.SkinUseCase>(
        () => _i123.SkinUseCase(gh<_i156.SkinRepository>()));
    gh.factory<_i1039.MatchUseCase>(
        () => _i1039.MatchUseCase(gh<_i82.MatchRepository>()));
    gh.factory<_i630.PlayerInfoUseCase>(
        () => _i630.PlayerInfoUseCase(gh<_i72.PlayerInfoRepository>()));
    gh.factory<_i921.WalletUseCase>(
        () => _i921.WalletUseCase(gh<_i662.WalletRepository>()));
    gh.factory<_i868.LoadOutUseCase>(
        () => _i868.LoadOutUseCase(gh<_i368.LoadOutRepository>()));
    gh.factory<_i791.StorefrontUseCase>(
        () => _i791.StorefrontUseCase(gh<_i412.StorefrontRepository>()));
    return this;
  }
}

class _$BaseModule extends _i495.BaseModule {}

class _$DioModule extends _i715.DioModule {}
