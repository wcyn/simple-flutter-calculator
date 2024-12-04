import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  bool isDark = true;
  final switcherController = ValueNotifier<bool>(false);

  lightTheme() {
    isDark = false;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    update();
  }

  darkTheme() {
    isDark = true;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    update();
  }

  @override
  void onInit() {
    switcherController.addListener(() {
      if (switcherController.value) {
        lightTheme();
      } else {
        darkTheme();
      }
    });
    super.onInit();
  }
}
