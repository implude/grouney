import 'package:flutter/material.dart';
import 'package:grouney/main.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kopub'),
      home: Scaffold(
        appBar: AppBar(title: Text('Grouney',
          style: TextStyle(fontFamily: 'KBIZgo', fontSize: 20, fontWeight: FontWeight.w900, color: Palatte.mygray),),
          backgroundColor: Palatte.mynavy,),
      ),
    );
  }
}
