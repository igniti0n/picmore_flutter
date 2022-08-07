import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:picmore/app/di/dependency_injection.dart';

import '../common/flavor/app_build_mode.dart';
import '../common/flavor/flavor_config.dart';
import 'picmore_app.dart';

Future<void> runPicmoreApp() async {
  await runZonedGuarded<Future<void>>(
    () async {
      getIt.registerLazySingleton(_determineAppBuildMode);
      _setupErrorCapture();
      _lockOrientation();

      runApp(ProviderScope(child: PicmoreApp()));
    },
    (dynamic error, StackTrace stackTrace) async {
      await FlavorConfig.submitError(
        error,
        stackTrace: stackTrace,
      );
    },
  );
}

void _setupErrorCapture() {
  FlutterError.onError = (FlutterErrorDetails details) async {
    final flavour = GetIt.instance.get<FlavorConfig>();
    if (flavour.flavor == AppBuildMode.debug) {
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(
        details.exception,
        details.stack ?? StackTrace.empty,
      );
    }
  };
}

void _lockOrientation() {
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
}

AppBuildMode _determineAppBuildMode() {
  if (kDebugMode) {
    return AppBuildMode.debug;
  } else if (kProfileMode) {
    return AppBuildMode.profile;
  } else {
    return AppBuildMode.release;
  }
}
