import 'package:injectable/injectable.dart';
import 'package:valstore/data/util/util.dart';

@module
abstract class BaseModule {
  @Named("BaseAuthenticationUrl")
  String get baseAuthUrl => baseAuthenticationUrl;

  @Named("BaseValApplicationUrl")
  String get baseValApplicationUrl => baseValRankedApplicationUrl;

  @Named("BaseSkinLevelUrl")
  String get baseSkinLevelUrl => baseSkinLevelsUrl;

  @Named("BaseRiotGamesUrl")
  String get baseRiotGameUrl => baseRiotGamesUrl;
}