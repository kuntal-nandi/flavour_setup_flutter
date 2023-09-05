import 'package:flutter/material.dart';

enum Flavor {dev, uat, prod }
class Config {
  Flavor appFlavor = Flavor.prod;

  String get env {
    switch (appFlavor) {
      case Flavor.dev:
        return 'dev';
      case Flavor.uat:
        return 'uat';
      case Flavor.prod:
        return 'prod';
      default:
        return '';
    }
  }

  String get appName {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Flavor Dev';
      case Flavor.uat:
        return 'Flavor Uat';
      case Flavor.prod:
        return 'Flavor Prod';
      default:
        return 'Flavor';
    }
  }

  ThemeData get appTheme{
    switch (appFlavor) {
      case Flavor.dev:
        return ThemeData(
        primarySwatch: Colors.grey,
      );
      case Flavor.uat:
        return ThemeData(
        primarySwatch: Colors.blue,
      );
      case Flavor.prod:
        return ThemeData(
        primarySwatch: Colors.green,
      );
      default:
        return ThemeData(
        primarySwatch: Colors.orange,
      );
    }
  }
}