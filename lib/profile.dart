import 'package:flutter/material.dart';
import 'package:grouney/main.dart';
import 'dart:ui';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String userName = "사용자";
  String userID = "@123123123";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kopub'),
      home: Scaffold(
        appBar: AppBar(title: Text('Grouney',
          style: TextStyle(fontFamily: 'KBIZgo', fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),),
          backgroundColor: Palatte.myskyblue,),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network('https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_640.jpg', width: MediaQuery.of(context).size.width*0.4, height: MediaQuery.of(context).size.height*0.23, fit: BoxFit.fill,),
                  ), SizedBox(width: 20,),
                  Column(
                    children: [
                      Text('${userName}', style: TextStyle(
                        fontFamily: 'KBIZgo', fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black
                      ),),
                      Text('${userID}', style: TextStyle(
                          fontFamily: 'Kopub', fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black
                      ),),

                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
