import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/my_home_page_controller.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final MyHomePageController controller = Get.put(MyHomePageController());

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: infoText(context),
      ),
      floatingActionButton: myFab(),
    );
  }

  Widget infoText(context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Obx(
            () => Text(
              '${controller.count.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ],
      );

  Widget myFab() => Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: controller.increment,
          tooltip: 'Increment',
          child: Icon(Icons.plus_one),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: controller.decrement,
          tooltip: 'Decrement',
          child: Icon(Icons.exposure_minus_1),
        ),
      ]);
}
