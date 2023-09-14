import 'package:flutter/material.dart';

const MaterialColor mainColor = MaterialColor(_mainColorPrimaryValue, <int, Color>{
  50: Color(0xFFFDECE7),
  100: Color(0xFFFAD0C4),
  200: Color(0xFFF6B19D),
  300: Color(0xFFF29275),
  400: Color(0xFFF07A58),
  500: Color(_mainColorPrimaryValue),
  600: Color(0xFFEB5B34),
  700: Color(0xFFE8512C),
  800: Color(0xFFE54725),
  900: Color(0xFFE03518),
});
const int _mainColorPrimaryValue = 0xFFED633A;

const MaterialColor mainColorAccent = MaterialColor(_mainColorAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_mainColorAccentValue),
  400: Color(0xFFFFB6AD),
  700: Color(0xFFFFA093),
});
const int _mainColorAccentValue = 0xFFFFE3E0;

const Color textColor = Color(0xFF353839);