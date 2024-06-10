import 'package:flutter/material.dart';
import 'package:learn_routing_g10/UI/home/widgets/home_left_bottom_item_widget.dart';
import 'package:learn_routing_g10/UI/home/widgets/home_left_top_item_widget.dart';
import 'package:learn_routing_g10/UI/home/widgets/home_right_item_widget.dart';

import '../widgets/home_top_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: HomeTopItemWidget(),
          ),
          const Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      HomeLeftTopItemWidget(),
                      HomeLeftBottomItemWidget(),
                    ],
                  ),
                ),
                HomeRightItemWidget()
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Colors.red,
              minWidth: double.infinity,
              height: 55,
              onPressed: (){},
              shape: const StadiumBorder(),
              child: const Text("Change"),
            ),
          ),
        ],
      ),
    );
  }
}
