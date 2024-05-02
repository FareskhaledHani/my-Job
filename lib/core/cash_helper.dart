import 'dart:async';
import 'dart:convert';
// import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;
  static const String _tokenKey = 'token';
  static const String _languageKey = 'language';
  static const String keyListBio = 'your_key';
  static const String _firstTime = 'firstTime';
  // static const String keyPassword = 'password';

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();

  }


  static String getToken() {
    return _prefs.getString(_tokenKey) ?? "";
  }

  static Future<void> setToken(String token) async {
    await init();
    await _prefs.setString(_tokenKey, token);
  }

  static Future removeLoginData() async {
    await _prefs.clear();
  }

  static String getFirstTime() {
    return _prefs.getString(_firstTime) ?? "";
  }

  static Future<void> setFirstTime(String first) async {
    await init();
    await _prefs.setString(_firstTime, first);
  }

  static Future removeFirstTime() async {
    await _prefs.clear();
  }


  static Future<void> setLanguage(String languageSelect) async {
    await init();
    await _prefs.setString(_languageKey, languageSelect);
  }
  static String getLanguage() {
    return _prefs.getString(_languageKey) ?? "en";
  }
  static Future<bool> savePassword(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  static String? getPassword(String key) {
    return _prefs.getString(key);
  }

  static Future<bool> deletePassword(String key) async {
    return await _prefs.remove(key);
  }

  static Future<Map<int, Map<String, dynamic>>> getList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString(keyListBio);
    if (jsonString != null) {
      Map<int, dynamic> decodedMap = jsonDecode(jsonString);
      Map<int, Map<String, dynamic>> map = {};
      decodedMap.forEach((key, value) {
        map[key] = Map<String, dynamic>.from(value);
      });
      return map;
    } else {
      return {};
    }
  }

  // Method to save the updated list to shared preferences
  static Future<void> saveList(Map<int, Map<String, dynamic>> updatedMap) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<int, dynamic> serializedMap = {};
    updatedMap.forEach((key, value) {
      serializedMap[key] = value;
    });
    String serializedList = jsonEncode(serializedMap);
    await prefs.setString(keyListBio, serializedList);
  }

  // Method to add a new item to the list in shared preferences
  static Future<void> addItemToList(int newItemKey, Map<String, dynamic> newItemValue) async {
    Map<int, Map<String, dynamic>> map = await getList();
    map[newItemKey] = newItemValue;
    await saveList(map);
  }

}
//CacheHelper.getPassword('PasswordKey');