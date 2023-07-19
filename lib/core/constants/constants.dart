import '../../config.dart' show environmentHost;
/*
 * Copyright (c) 2021, Vipin.
 */

/// Constants for Rest api's
class NetworkKeys {
  NetworkKeys._();

  static String base_url = environmentHost[StringKeys.base_url] ?? "";

  static const String login = '/auth/login';
  static const String products = '/products';


}

/// Constants for Rest api's
class StringKeys {
  StringKeys._();

  static const String no_network = 'no_network';
  static const String server_error = 'server_error';
  static const String base_url = 'BASE_URL';
  static const String api_key = 'API_KEY';
  static const String firebaseKey = 'FIREBASE_KEY';

}


/// Constants for SharedPreferences
class StorageKeys {
  StorageKeys._();

  static const String token = 'token';
  static const String push_token = 'push_token';
  static const String loggedIn = 'loggedIn';
  static const String walkthrough = 'walkthrough';
  static const String firstLogin = 'firstLogin';
  static const String darkModeEnabled = 'darkModeEnabled';
  static const String username = 'username';
  static const String email = 'email';
  static const String mobile = 'mobile';
  static const String currentScreen = 'currentScreen';
  static const String profilePic = 'profile_pic';

}


