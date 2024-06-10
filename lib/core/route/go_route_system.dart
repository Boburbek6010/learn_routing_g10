import 'package:go_router/go_router.dart';
import 'package:learn_routing_g10/core/route/app_route_name.dart';
import '../../UI/home/pages/home_page.dart';

final class GoRouteSystem{


  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.home,
    routes: [
      GoRoute(
        path: AppRouteName.home,
        builder: (context, state) => const HomePage(),
      ),
    ]
  );
}