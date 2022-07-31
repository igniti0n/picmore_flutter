import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:picmore/common/flavor/flavor_config.dart';

QueuedInterceptorsWrapper get queuedClientIdInterceptor {
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

LogInterceptor get logInterceptor => LogInterceptor(
      request: true,
      responseHeader: true,
      responseBody: true,
      requestBody: true,
      requestHeader: true,
      error: true,
      logPrint: (message) {
        if (kDebugMode) {
          log(message.toString());
        }
      },
    );
