import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,),

          SizedBox(height: 20,),
          Text('Progress Indicator Controlado'),
          SizedBox(height: 10,),
          _ControllerProgressIndicator(),




        ],
      ),
    );
  }
}


class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){
        return (value*2)/100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

       


        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue,strokeWidth: 2,backgroundColor: Colors.yellow),
              const SizedBox(width: 20,),
              Expanded(
                child:
                LinearProgressIndicator(value: progressValue)
                ),        
            ],
          ),
        );
      }
    );
  }
}