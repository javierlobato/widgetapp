import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  // Metodo que crea una tarjeta tipo flotante que ayuda a aceptar terminos en cuanto licencia

  void openDialog(context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estás Seguro?'),
              content: const Text(
                  'Irure ea aute fugiat veniam reprehenderit id cupidatat eiusmod laboris mollit eiusmod. Labore duis veniam elit duis pariatur ea ad. Aliqua qui proident anim Lorem qui aliqua. Tempor in duis eu esse. Amet nostrud culpa aute dolor nostrud culpa ut non occaecat. Pariatur aliqua quis elit elit do cillum eu adipisicing incididunt labore proident dolor esse. In labore ad laboris id qui aliquip aliquip et anim nisi.'),
              actions: [
                TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar'), ),
                FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licences usadas'),
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text('Esse fugiat Lorem commodo incididunt.')
                ]);
              },
            ),
            FilledButton.tonal(
              child: const Text('Mostrar diálogos'),
              onPressed: () => openDialog(context),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
