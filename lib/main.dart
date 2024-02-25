import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/router/app_router.dart';
import 'package:widgetapp/config/themes/app_theme.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';




void main() {
  
  runApp(
    const ProviderScope(
      child: MainApp()
      )
    );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final isdarkMode = ref.watch(isDarkModeProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isdarkMode: isdarkMode).getTheme(),
    );
  }
}

