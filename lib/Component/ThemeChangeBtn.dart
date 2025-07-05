import 'package:bmi_calculator/controller/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themechangebtn extends StatelessWidget {
  const Themechangebtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //height: 50,
          padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              IconButton(onPressed: (){
                themeController.changeTheme();


              }, icon: Icon(Icons.light_mode,
                color: themeController.isdark.value?
                Theme.of(context).colorScheme.onSecondaryContainer:
                Theme.of(context).colorScheme.primary,)),
              IconButton(onPressed: (){
                themeController.changeTheme();

              }, icon: Icon(Icons.dark_mode,
                color: themeController.isdark.value?
                Theme.of(context).colorScheme.primary:
                Theme.of(context).colorScheme.onSecondaryContainer,)),
            ],
          ),
        )
      ],
    );
  }
}
