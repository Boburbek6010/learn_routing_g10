import 'package:flutter/material.dart';
import 'package:learn_routing_g10/core/style/app_colors.dart';

class HomeTopItemWidget extends StatefulWidget {
  const HomeTopItemWidget({super.key});

  @override
  State<HomeTopItemWidget> createState() => HomeTopItemWidgetState();
}

class HomeTopItemWidgetState extends State<HomeTopItemWidget> {
  int index = 0;

  void increase() {
    index++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
