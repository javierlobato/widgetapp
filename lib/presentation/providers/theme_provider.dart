import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/themes/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de Colores INMUTABLES.

final colorListProvider = Provider((ref) => colorList);


final selectedColorProvider = StateProvider<int>((ref) => 0);


//Un objeto personalizado  de tipo AppTheme

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme> ((ref) => ThemeNotifier());



//Controller o Notifier

class ThemeNotifier extends StateNotifier <AppTheme>{

// el State va a ser una instancia de AppTheme

  ThemeNotifier(): super(AppTheme());
  
  void toggleDarkMode (){
    state =  state.copyWith(isdarkMode: !state.isdarkMode);
  }

  void changeColorIndex (int colorIndex){
    state =  state.copyWith(selectedColor: colorIndex);
  }
}