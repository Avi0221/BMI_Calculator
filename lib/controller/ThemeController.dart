import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  ThemeController extends GetxController{
  RxBool isdark = false.obs;

  void changeTheme() async{
    isdark.value =!isdark.value;

    Get.changeThemeMode(isdark.value ? ThemeMode.dark : ThemeMode.light);
  }
}