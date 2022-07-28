import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpages/app/modules/pagina1/pagina1_bindings.dart';
import 'package:getxpages/app/modules/pagina1/pagina1_page.dart';
import 'package:getxpages/app/modules/pagina2/pagina2_bindings.dart';
import 'package:getxpages/app/modules/pagina2/pagina2_page.dart';
import 'package:getxpages/app/modules/pagina3/pagina3_bindings.dart';
import 'package:getxpages/app/modules/pagina3/pagina3_page.dart';

class HomeController extends GetxController {
  static const NAVIGATOR_KEY = 1;

  final _tabIndex = 0.obs;
  final _tabs = ['/pagina1', '/pagina2', '/pagina3'];
  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) {
    _tabIndex(index);
    Get.toNamed(_tabs[index], id: NAVIGATOR_KEY);
  }

  Route? onGeneratedRouter(RouteSettings settings) {
    if (settings.name == '/pagina1') {
      return GetPageRoute(
        settings: settings,
        page: () => const Pagina1Page(),
        binding: Pagina1Bindings(),
      );
    }

    if (settings.name == '/pagina2') {
      return GetPageRoute(
        settings: settings,
        page: () => const Pagina2Page(),
        binding: Pagina2Bindings(),
      );
    }

    if (settings.name == '/pagina3') {
      return GetPageRoute(
        settings: settings,
        page: () => const Pagina3Page(),
        binding: Pagina3Bindings(),
      );
    }
  }
}
