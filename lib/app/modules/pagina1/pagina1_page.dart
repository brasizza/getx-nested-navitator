import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './pagina1_controller.dart';

class Pagina1Page extends GetView<Pagina1Controller> {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('PAGINA1'),
    );
  }
}
