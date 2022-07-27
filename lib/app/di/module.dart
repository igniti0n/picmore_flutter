import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class Module {
  Dio get dio => Dio(BaseOptions(
        baseUrl: 'https://api.unsplash.com',
      ));
}
