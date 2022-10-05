import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouney/grouney/home.dart';
import 'package:grouney/grouney/travel.dart';
import 'package:grouney/grouney/vote.dart';
import 'package:grouney/profile.dart';

import 'Load.dart';

class Palatte {
  static const mygray = Color(0xffF3EFE6);
  static const mynavy = Color(0xff1768B7);
  static const myskyblue = Color(0xffC8D2ED);
  static const myyellow = Color(0xffFCE298);
  static const myblue = Color(0xff2B86DF);
  static const myskyskyblue = Color(0xff95C8FA);
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/vote',
      getPages: [
        GetPage(name: '/', page: () => const Load()),
        GetPage(name: '/profile', page: () => const Profile()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: "/travel", page: () => const Travel()),
        GetPage(name: "/vote", page: () => const Vote())
      ],
    );
  }
}
