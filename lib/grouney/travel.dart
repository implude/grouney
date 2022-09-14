import 'package:flutter/material.dart';
import 'package:grouney/main.dart';

class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( // 앱바 폰트 변경해야함
          title: Text('Grouney',
            style: TextStyle(
              fontSize: 30,
              // fontFamily:
            ),
          ),
          elevation: 0.0,
          backgroundColor: Palatte.myblue,
        ),
      ),
    );
  }
}
