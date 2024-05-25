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
  static const String _name = 'name';
  static const String _completePersonDetails = 'personDetails';
  static const String _completeEducation = 'completeEducation';
  static const String _completePortFolio = 'completePortfolio';
  static const String _completeExperience = 'completeExperience';

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

  static String getName() {
    return _prefs.getString(_name) ?? "";
  }

  static Future<void> setName(String name) async {
    await init();
    await _prefs.setString(_name, name);
  }

  static Future removeLoginData() async {
    await _prefs.clear();
  }

  ///////complete profile person details
  static bool getCompletePersonDetails() {
    return _prefs.getBool(_completePersonDetails) ?? false;
  }

  static Future<void> setCompletePersonDetails(bool portfolio) async {
    await init();
    await _prefs.setBool(_completePersonDetails, portfolio);
  }

  //////////////////////////////////////////////////////////////////////////////
  /////////education
  static bool getCompleteEducation() {
    return _prefs.getBool(_completeEducation) ?? false;
  }

  static Future<void> setCompleteEducation(bool education) async {
    await init();
    await _prefs.setBool(_completeEducation, education);
  }

////////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////
  /////////portFolio
  static bool getCompletePortfolio() {
    return _prefs.getBool(_completePortFolio) ?? false;
  }

  static Future<void> setCompletePortfolio(bool portFolio) async {
    await init();
    await _prefs.setBool(_completePortFolio, portFolio);
  }

////////////////////////////////////////////////////////////////////////////////
  /////////portFolio
  static bool getCompleteExperience() {
    return _prefs.getBool(_completeExperience) ?? false;
  }

  static Future<void> setCompleteExperience(bool experience) async {
    await init();
    await _prefs.setBool(_completeExperience, experience);
  }

////////////////////////////////////////////////////////////////////////////////

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
  static Future<void> saveList(
      Map<int, Map<String, dynamic>> updatedMap) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<int, dynamic> serializedMap = {};
    updatedMap.forEach((key, value) {
      serializedMap[key] = value;
    });
    String serializedList = jsonEncode(serializedMap);
    await prefs.setString(keyListBio, serializedList);
  }

  // Method to add a new item to the list in shared preferences
  static Future<void> addItemToList(int newItemKey,
      Map<String, dynamic> newItemValue) async {
    Map<int, Map<String, dynamic>> map = await getList();
    map[newItemKey] = newItemValue;
    await saveList(map);
  }

  ///////////////////////////////////////////////////////////////////////////////
  ////////////save education
  static Future<void> setEducation(Map<String, String> map) async {
    final jsonString = json.encode(map);
    await _prefs.setString('myMap', jsonString);
  }

// Retrieve a value from the saved Map in SharedPreferences using a key
  static Future<String?> getEducation(String key) async {
    final jsonString = _prefs.getString('myMap');
    if (jsonString != null) {
      final map = json.decode(jsonString);
      return map[key];
    }
    return null; // Return null if the key or map is not found

  }
//CacheHelper.getPassword('PasswordKey')
//////////////////////set education bool
  static Future<void> setExperience(Map<String, String> map) async {
    final jsonString = json.encode(map);
    await _prefs.setString('myMap', jsonString);
  }

// Retrieve a value from the saved Map in SharedPreferences using a key
  static Future<String?> getExperience(String key) async {
    final jsonString = _prefs.getString('myMap');
    if (jsonString != null) {
      final map = json.decode(jsonString);
      return map[key];
    }
    return null; // Return null if the key or map is not found
  }
  ////////////////////////ratio
  static Future<void> storeInt(int valueRatio) async {
    await _prefs.setInt('valueRatio', valueRatio);
  }
  static Future<int?> getInt() async {
    return _prefs.getInt('valueRatio');
  }
  static Future<void> incrementInt(int amount) async {
    int? currentValue = await getInt();
    if (currentValue != null) {
      int newValue = currentValue + amount;
      await storeInt(newValue);
    }
  }
}