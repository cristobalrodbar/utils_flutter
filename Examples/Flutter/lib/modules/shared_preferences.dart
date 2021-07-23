import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SharedPreferencesHelper {
  removePref(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future cleanPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool limpiados = await prefs.clear();
    return limpiados;
  }

  Future<String?> getPrefString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  setPrefString(String key, String valor) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, valor);
  }

  Future getPrefListString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  setPrefListString(String key, List<String> valor) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, valor);
  }

  Future<int?> getPrefInt(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  setPrefInt(String key, int valor) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, valor);
  }

  Future<bool?> getPrefBool(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  setPrefBool(String key, bool valor) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, valor);
  }
}
