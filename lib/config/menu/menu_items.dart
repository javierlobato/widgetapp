import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[

  MenuItems(
    title: 'Botones', 
    subTitle: 'Varios Botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
    ),

    MenuItems(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card ,
    ),

    MenuItems(
    title: 'ProgressIndicator', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded,
    ),

    MenuItems(
    title: 'SnackBars', 
    subTitle: 'SnackBars y diálogos', 
    link: '/snackbars', 
    icon: Icons.accessibility_rounded,
    )
];
