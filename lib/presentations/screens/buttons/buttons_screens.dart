import 'package:flutter/material.dart';

class ButtonsScreens extends StatelessWidget {

  static const String name = 'buttons_screen';
  const ButtonsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons screens'),
      ),
      body: const Placeholder(),

    );
  }
}