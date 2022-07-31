import 'package:flutter/material.dart';
import 'package:picmore/app/di/dependency_injection.dart';

import 'app/run_picmore_app.dart';
import 'common/flavor/flavor.dart';
import 'common/flavor/flavor_config.dart';
import 'common/flavor/flavor_values.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //dependency injection
  configureInjection(Flavor.staging.name);

  getIt.registerSingleton(FlavorConfig(
    flavor: Flavor.staging,
    name: 'Staging',
    values: const FlavorValues(
      baseUrl: 'staging URL',
    ),
  ));

  runPicmoreApp();
}
