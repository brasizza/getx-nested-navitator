import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(child: Text('Paginação com pageview')),
          Expanded(
            child: Navigator(
              initialRoute: '/pagina1',
              key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
              onGenerateRoute: controller.onGeneratedRouter,
            ),
          ),
          Obx(() => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: (controller.tabIndex == 0) ? Colors.yellow.shade800 : null),
                    onPressed: () {
                      controller.tabIndex = 0;
                    },
                    child: Text('Pagina1'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: (controller.tabIndex == 1) ? Colors.yellow.shade800 : null),
                    onPressed: () {
                      controller.tabIndex = 1;
                    },
                    child: Text('Pagina2'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: (controller.tabIndex == 2) ? Colors.yellow.shade800 : null),
                    onPressed: () {
                      controller.tabIndex = 2;
                    },
                    child: Text('Pagina3'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
