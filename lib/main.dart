import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouney/profile.dart';

import 'Load.dart';

class Palatte{
  static const mygray = Color(0xffF3EFE6);
  static const mynavy = Color(0xff1768B7);
  static const myskyblue = Color(0xffC8D2ED);
  static const myyellow = Color(0xffFCE298);
  static const myblue = Color(0xff2B86DF);
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/profile',
      getPages: [
        GetPage(name: '/', page: () => Load()),
        GetPage(name: '/profile', page: () => Profile()),
        // GetPage(name: '/home', page: () => Home()),
      ],
    );
  }
}
