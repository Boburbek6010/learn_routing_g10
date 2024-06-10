import 'package:flutter/material.dart';

import '../../../core/style/app_colors.dart';

class HomeLeftBottomItemWidget extends StatefulWidget {
  const HomeLeftBottomItemWidget({super.key});

  @override
  State<HomeLeftBottomItemWidget> createState() => _HomeLeftBottomItemWidgetState();
}

class _HomeLeftBottomItemWidgetState extends State<HomeLeftBottomItemWidget> {

  int index = 0;

  void increase() {
    index++;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.l00B533,
        ),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minWidth: double.infinity,
          height: double.infinity,
          onPressed: increase,
          padding: EdgeInsets.zero,
          child: Text("Index: $index"),
        ),
      ),
    );
  }
}
