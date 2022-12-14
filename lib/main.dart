import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouney/home.dart';
import 'package:grouney/profile.dart';


class Palatte {
  static const mygray = Color(0xffF3EFE6);
  static const mynavy = Color(0xff1768B7);
  static const myskyblue = Color(0xffC8D2ED);
  static const myyellow = Color(0xffFCE298);
  static const myblue = Color(0xff2B86DF);
  static const myskyskyblue = Color(0xff95C8FA);
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/Profile', page: () => Profile())
      ],
    );
  }
}
