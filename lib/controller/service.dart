import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class themeService {
  final _box = GetStorage();
  final _key = "isDarkMode";
  bool _loadThemFromBox() => _box.read(_key) ?? false;
  ThemeMode get theme => _loadThemFromBox() ? ThemeMode.dark : ThemeMode.light;
  _savToThemeBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(_loadThemFromBox() ? ThemeMode.dark : ThemeMode.light);
    _savToThemeBox(!_loadThemFromBox());
  }
}
