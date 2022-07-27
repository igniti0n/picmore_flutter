import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:infinum_architecture/app/di/dependency_injection.dart';
import 'package:loggy/loggy.dart';

import 'app/run_picmore_app.dart';
import 'common/flavor/flavor.dart';
import 'common/flavor/flavor_config.dart';
import 'common/flavor/flavor_values.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  log("ANYTHING");
  //dependency injection
  configureInjection(Flavor.staging.name);
  log("ANYTHING 2");
  logDebug("This is debug message");
  getIt.registerSingleton(FlavorConfig(
    flavor: Flavor.staging,
    name: 'Staging',
    values: const FlavorValues(
      baseUrl: 'staging URL',
    ),
  ));

  runPicmoreApp();
}
