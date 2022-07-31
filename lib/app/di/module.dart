import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:picmore/source_remote/dio/interceptors.dart';

@module
abstract class Module {
  Dio get dio {
    final _dio = Dio(BaseOptions(
      baseUrl: 'https://api.unsplash.com',
    ));
    _dio.interceptors.add(queuedClientIdInterceptor);
    // _dio.interceptors.add(logInterceptor);
    return _dio;
  }
}
