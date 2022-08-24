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
                  ), SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('${userName}', style: TextStyle(
                        fontFamily: 'KBIZgo', fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black
                      ),),
                      Text('${userID}', style: TextStyle(
                          fontFamily: 'Kopub', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black
                      ),),
                    ],
                  ), SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  TextButton.icon(onPressed: (){}, icon: Icon(Icons.settings), label: Text(""))
                ],
              ),SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(height: 8, width: MediaQuery.of(context).size.width*0.8, color: Palatte.myskyblue.withOpacity(0.5),),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
                decoration: BoxDecoration(
                  color: Palatte.mygray,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('내 예전 경로',
                      style: TextStyle(color: Palatte.mynavy,
                          fontFamily: "KBIZgo", fontWeight: FontWeight.w700, fontSize: 32),
                    ), SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Container(height: 3, width: MediaQuery.of(context).size.width*0.4, color: Colors.black.withOpacity(0.3),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                    Container(height: 3, width: MediaQuery.of(context).size.width*0.4, color: Colors.black.withOpacity(0.3),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
