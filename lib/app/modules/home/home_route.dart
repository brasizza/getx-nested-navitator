import 'package:get/get.dart';
import 'package:getxpages/app/modules/home/home_bindings.dart';
import 'package:getxpages/app/modules/home/home_page.dart';

class HomeRoute {
  static final pages = [GetPage(name: '/', page: () => const HomePage(), binding: HomeBindings())];
}
