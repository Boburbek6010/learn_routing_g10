import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_routing_g10/core/route/app_route_name.dart';
import 'package:learn_routing_g10/core/style/app_images.dart';
import 'package:learn_routing_g10/widget/category_page.dart';
import 'package:learn_routing_g10/widget/detail_page.dart';
import 'package:learn_routing_g10/widget/home_page.dart';
import 'package:learn_routing_g10/widget/main_page.dart';
import 'package:learn_routing_g10/widget/profile_page.dart';

final class GoRouteSystem{


  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.home,
    routes: [
      GoRoute(
        path: AppRouteName.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: AppRouteName.detail,
            builder: (context, state) => const DetailPage(),
            routes: [
              GoRoute(
                path: AppRouteName.category,
                builder: (context, state) => const CategoryPage(),
              ),

            ]
          ),
        ]
      ),
      GoRoute(
        path: AppRouteName.profile,
        builder: (context, state) => const ProfilePage(),
      ),
      ShellRoute(
        builder: (context, state, child){
          return MainPage(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRouteName.profile,
            builder: (context, state) => const ProfilePage(),
          ),
          GoRoute(
            path: AppRouteName.profile,
            builder: (context, state) => const ProfilePage(),
          ),
          GoRoute(
            path: AppRouteName.profile,
            builder: (context, state) => const ProfilePage(),
          ),
        ]
      )

    ]
  );


}