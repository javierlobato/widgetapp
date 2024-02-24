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
    title: 'Riverpod Counter', 
    subTitle: 'Introducción a Riverpod', 
    link: '/counter-riverpod', 
    icon: Icons.star_rate,
    ),
  
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
    ),

    MenuItems(
    title: 'Animated Container', 
    subTitle: 'Statefull widget animado', 
    link: '/animated_screen', 
    icon: Icons.animation_rounded,
    ),

    MenuItems(
    title: 'Ui Controls', 
    subTitle: 'Serie de controles de flutter', 
    link: '/uicontrols', 
    icon: Icons.control_point_sharp,
    ),

    MenuItems(
    title: 'Turorial', 
    subTitle: 'Tuturial whit app', 
    link: '/tutorial', 
    icon: Icons.book_sharp,
    ),

    MenuItems(
    title: 'Infinite Scroll and Pull', 
    subTitle: 'Listas infinitas', 
    link: '/infinite', 
    icon: Icons.emoji_symbols_rounded,
    ),

    MenuItems(
    title: 'Theme Changer', 
    subTitle: 'Theme color changer', 
    link: '/theme-changer', 
    icon: Icons.emoji_flags,
    ),

    
];
