import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_routing_g10/core/route/app_route_name.dart';
import 'package:learn_routing_g10/core/style/app_colors.dart';
import 'package:learn_routing_g10/core/style/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HomePage",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 33,
                  ),
            ),
            MaterialButton(
              onPressed: () async {
                // next page
                var result = await context.push("${AppRouteName.home}${AppRouteName.detail}/${AppRouteName.category}", extra: {"ss": "dd"});
              },
            )
          ],
        ),
      ),
    );
  }
}