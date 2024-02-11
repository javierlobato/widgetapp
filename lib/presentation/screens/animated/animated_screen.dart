import 'package:flutter/material.dart';
import 'dart:math' show Random;


class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  Color colorVariable = Colors.indigo;
  double borderRadiusVariable = 10;
  double heightVariable = 50;
  double widthVariable = 50;

  void changeShade() {
    final numberRamdon = Random();      

    widthVariable = numberRamdon.nextInt(250) + 120;
    borderRadiusVariable = numberRamdon.nextInt(100) + 20;
    heightVariable = numberRamdon.nextInt(250) + 120;

    colorVariable = Color.fromRGBO(
      numberRamdon.nextInt(255), 
      numberRamdon.nextInt(255), 
      numberRamdon.nextInt(255), 
      1
      );

      setState(() { });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.decelerate,
          width: widthVariable <= 0 ? 0 :widthVariable,
          height: heightVariable <= 0 ? 0 : heightVariable,
          decoration: BoxDecoration(
              color: colorVariable,
              borderRadius: BorderRadius.circular(borderRadiusVariable <= 0 ? 0 : borderRadiusVariable)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShade,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
