import 'package:flutter/material.dart';
import 'package:widgetapp/config/router/app_router.dart';
import 'package:widgetapp/config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:1).getTheme(),//aqui se le cambia el color al tema
      
    );
  }
}