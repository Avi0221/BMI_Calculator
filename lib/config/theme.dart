import 'package:bmi_calculator/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    surface: LBgcolor,
    onSurface: LFontcolor,
    primary: LPrimarycolor,
    primaryContainer: LDivcolor,
    onPrimaryContainer: LFontcolor,
    onSecondaryContainer:LLabelcolor,
  )

);
var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    surface: DBgcolor,
    onSurface: DFontcolor,
    primary: DPrimarycolor,
    primaryContainer: DDivcolor,
    onPrimaryContainer: DFontcolor,
    onSecondaryContainer: DLabelcolor
  )

);