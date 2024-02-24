import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:widgetapp/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const name = 'theme-changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final darkMode = ref.watch( isDarkModeProvider );

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: Icon( darkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: (){
              
              
              },
            )
        ],        
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color:color),),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: 3, 
          onChanged: (value)=>{
           //: notificar el cambio
          }
        );
      }
      );
  }
}