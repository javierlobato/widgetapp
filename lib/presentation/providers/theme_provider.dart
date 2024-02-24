import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/themes/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de Colores INMUTABLES.

final colorListProvider = Provider((ref) => colorList);