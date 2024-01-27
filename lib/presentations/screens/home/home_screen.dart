import 'dart:html';

import 'package:flutter/material.dart';
import 'package:widgetapp/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

        
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return ListTile(
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),          
          leading: Icon(menuItem.icon),
          
          
        );
      }
    );  
  }
}
