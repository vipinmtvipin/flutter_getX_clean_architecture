import 'dart:collection';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'core/constants/constants.dart';

Map<String, String> get environmentHost {
  //  bool isProd =  kReleaseMode;

  /// use this command to run the application
  // flutter run --dart-define=ENVIRONMENT=staging
  //  flutter run --release --dart-define=ENVIRONMENT=production

  const env = String.fromEnvironment("ENVIRONMENT", defaultValue: "production");

  final Map<String, String> currentEnv = HashMap();

  switch (env) {
    case 'production':
      {
        // replace with your production API endpoint
        currentEnv.addAll({
          StringKeys.base_url: 'https://dummyjson.com',
          StringKeys.api_key: 'production_key',
          StringKeys.firebaseKey: 'firebase_key',
        });
      }
      break;

    case 'staging':
      {
        currentEnv.addAll({
          StringKeys.base_url: 'https://dummyjson.com',
          StringKeys.api_key: 'staging_key',
          StringKeys.firebaseKey: 'firebase_key',
        });
      }
      break;
    case 'development':
      {
        currentEnv.addAll({
          StringKeys.base_url: 'https://dummyjson.com',
          StringKeys.api_key: 'development_key',
          StringKeys.firebaseKey: 'firebase_key',
        });
      }
      break;
    default:
      {
        currentEnv.addAll({
          StringKeys.base_url: 'https://dummyjson.com',
          StringKeys.api_key: 'production_key',
          StringKeys.firebaseKey: 'firebase_key',
        });
      }
      break;
  }
  return currentEnv;
}
