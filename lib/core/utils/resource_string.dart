import 'dart:convert';

import 'package:flutter/services.dart';

import 'logger.dart';


class ResourceString {

  static Map<String, String> _localizedStrings = {};

  static Future<void> init() async {
    // Load the language JSON file from the "lang" folder
    String jsonString = await rootBundle.loadString('assets/textstrings/strings.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  static String get(String key) {
    return _localizedStrings[key] ?? '';
  }

}