import 'package:flutter/material.dart';
import 'package:learn_routing_g10/core/route/app_route.dart';
import 'package:learn_routing_g10/core/route/app_route_name.dart';
import 'package:learn_routing_g10/core/route/go_route_system.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouteSystem.router,
      // initialRoute: AppRouteName.category,
      // onGenerateRoute: const AppRoute().onGenerateRoute,
    );
  }
}
