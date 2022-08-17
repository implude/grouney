import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Load.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Load(),

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Load()),

      ],
    );
  }
}
