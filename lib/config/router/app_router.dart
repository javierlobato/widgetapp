import 'package:go_router/go_router.dart';
import 'package:widgetapp/presentations/screens/screens.dart';


//Go_Router Configuration

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreens.name,
      builder: (context, state) => const HomeScreens()
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreens.name,
      builder: (context, state) => const ButtonsScreens()
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreens.name,
      builder: (context, state) => const CardsScreens()
    )
  ]

);
