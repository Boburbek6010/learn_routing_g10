import 'package:flutter/material.dart';

import '../core/style/app_images.dart';

class MainPage extends StatefulWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: AppImages.homePython,
          ),
          BottomNavigationBarItem(
            icon: AppImages.homePython,
          ),
          BottomNavigationBarItem(
            icon: AppImages.homePython,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
    );
  }
}
