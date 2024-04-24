import 'package:clock_app/controller/binding.dart';
import 'package:clock_app/controller/service.dart';
import 'package:clock_app/utils/theme.dart';
import 'package:clock_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: themeService().theme,
      initialBinding: MyBinding(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
