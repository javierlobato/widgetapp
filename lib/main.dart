import 'package:flutter/material.dart';
import 'package:widgetapp/config/themes/app_theme.dart';
import 'package:widgetapp/presentations/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Material App',
      home:const HomeScreen(),
    );
  }
}