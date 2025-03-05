import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  @Named("DefaultDio")
  Dio provideDio() => Dio();
}