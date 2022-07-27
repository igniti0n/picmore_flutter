import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_loggy/flutter_loggy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:infinum_architecture/app/di/dependency_injection.dart';
import 'package:loggy/loggy.dart';

import '../common/flavor/app_build_mode.dart';
import '../common/flavor/flavor_config.dart';
import '../common/logger/firebase_log_printer.dart';
import 'picmore_app.dart';

Future<void> runPicmoreApp() async {
  await runZonedGuarded<Future<void>>(
    () async {
      // pre-startup initialization
      getIt.registerLazySingleton(_determineAppBuildMode);
      _initLoggy();
      _setupErrorCapture();
      _lockOrientation();
      // final locale = await _getSavedLocale();

      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      );
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

void _initLoggy() {
  final minimumLogLevel = _determineMinimumLogLevel();
  final appBuildMode = GetIt.instance.get<AppBuildMode>();

  Loggy.initLoggy(
    logPrinter: (appBuildMode == AppBuildMode.release)
        ? const FirebaseLogPrinter()
        : const PrettyDeveloperPrinter(),
    logOptions: LogOptions(minimumLogLevel),
    filters: [
      if (appBuildMode == AppBuildMode.release) ReleaseLogFilter(),
    ],
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

LogLevel _determineMinimumLogLevel() {
  final appBuildMode = getIt<AppBuildMode>();
  switch (appBuildMode) {
    case AppBuildMode.debug:
      return LogLevel.all;
    default:
      return LogLevel.warning;
  }
}
