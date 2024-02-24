import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/presentation/providers/counter_provider.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {


    static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    final bool darkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon( darkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((darkMode) => !darkMode);
              
              },
            ) 
          ],
          
        ),

        body:  Center(
          child: Text('Valor: $clickCounter'),
        ),

        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: ()=>{
            ref.read(counterProvider.notifier).state++,  //Una forma de manejar el contador

          }
        ),

    );
  }
}