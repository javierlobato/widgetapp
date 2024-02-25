import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;
  final bool isdarkMode;

  AppTheme({
    this.isdarkMode = false, 
    required this.selectedColor 
  
  }): assert( selectedColor >= 0, 'Selected color must be greater then 0'),
      assert( selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}');


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isdarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor] 
    );

}
