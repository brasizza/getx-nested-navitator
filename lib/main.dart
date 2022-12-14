import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpages/app/modules/home/home_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: [...HomeRoute.pages]);
  }
}
