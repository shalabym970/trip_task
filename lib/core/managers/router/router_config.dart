
import 'package:go_router/go_router.dart';
import 'package:trip_task/features/home/presentation/pages/home_view.dart';

import 'app_routes.dart';


final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeView(),
    ),
  ],
  redirect: (context, state) {
    return null;
  },
);
