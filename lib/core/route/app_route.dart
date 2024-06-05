import 'package:flutter/material.dart';
import 'package:learn_routing_g10/widget/category_page.dart';
import 'package:learn_routing_g10/widget/detail_page.dart';
import 'package:learn_routing_g10/widget/home_page.dart';
import 'package:learn_routing_g10/widget/profile_page.dart';

import 'app_route_name.dart';

@immutable
final class AppRoute<T extends Object?> {
  const AppRoute();

  Route<T> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
          settings: settings,
        );
      case AppRouteName.detail:
        return MaterialPageRoute(
          builder: (context) => const DetailPage(),
          settings: settings,
        );
      case AppRouteName.profile:
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
          settings: settings,
        );
      case AppRouteName.category:
        return MaterialPageRoute(
          builder: (context) => const CategoryPage(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  Route<T> _errorRoute() => MaterialPageRoute<T>(
    builder: (context) => Scaffold(
      body: Center(
        child: Text(
          'Error Route',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    ),
  );

}
