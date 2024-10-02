import 'package:go_router/go_router.dart';

import '../../features/home/pages/level_page.dart';
import '../../features/home/pages/onboard_page.dart';
import '../../features/home/pages/splash_page.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/onboard',
      builder: (context, state) => const OnboardPage(),
    ),
    GoRoute(
      path: '/level',
      builder: (context, state) => const LevelPage(),
    ),
  ],
);
