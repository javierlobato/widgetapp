import 'package:go_router/go_router.dart';
import 'package:widgetapp/presentations/screens/screens.dart';


//Go_Router Configuration

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreens()
    ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreens()
    ),

    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreens()
    )
  ]

);
