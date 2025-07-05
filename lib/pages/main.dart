import 'package:bmi_calculator/config/theme.dart';
import 'package:bmi_calculator/pages/HomePage.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI APP',
      theme: lightTheme,darkTheme: darkTheme,
      home:HomePage(),
    );
  }
}

