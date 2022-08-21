import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'flavor.dart';
import 'flavor_values.dart';

@immutable
class FlavorConfig {
  factory FlavorConfig({
    required Flavor flavor,
    required FlavorValues values,
    required String name,
  }) {
    _instance = FlavorConfig._internal(flavor, values, name);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.values, this.name) {
    logDebug('Running application with flavor: $flavor');
  }

  final Flavor flavor;

  // final PackageInfo packageInfo;

  /// Flavor name formatted to show as text
  final String name;

  /// Possible flavor values that can change from flavor to flavor
  final FlavorValues values;

  /// Current instance of config
  static late FlavorConfig _instance;

  static FlavorConfig get instance => _instance;

  /// Return boolean for weather current build is production or staging
  static bool get isProduction => _instance.flavor == Flavor.production;

  static bool get isStaging => _instance.flavor == Flavor.staging;
}
