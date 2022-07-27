import 'package:dio/dio.dart';
import 'package:infinum_architecture/common/flavor/flavor_config.dart';

QueuedInterceptorsWrapper get queuedInterceptor {
  return QueuedInterceptorsWrapper(
    onRequest: (options, handler) async {
      options.queryParameters.putIfAbsent(
        'client_id',
        () => FlavorConfig.instance.values.clientId,
      );
      return handler.next(options);
    },
  );
}
