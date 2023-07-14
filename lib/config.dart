import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'core/constants/constants.dart';

Map<String, String> get environmentalHost {
  bool isProd =  kReleaseMode;  // const bool.fromEnvironment('dart.vm.product');
  final Map<String, String> env = HashMap();
  if (isProd) {
    // replace with your production API endpoint
    env.addAll(
        {
          StringKeys.base_url: 'https://dummyjson.com',
          StringKeys.api_key: 'Production_Key',
        }
    );
    return env;
  }

  // replace with your own development API endpoint
  env.addAll(
      {
        StringKeys.base_url: 'https://dummyjson.com',
        StringKeys.api_key: 'Development_Key',
      }
  );
  return env;
}