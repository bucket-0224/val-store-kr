import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:valstore/presentation/di/di.config.dart';

import '../../domain/entitlement_usecase.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() async {
  getIt.init();
}
