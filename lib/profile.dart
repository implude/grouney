import 'package:flutter/material.dart';
import 'package:grouney/main.dart';
import 'dart:ui';

void main() => runApp(Profile());

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  String userName = "사용자";
  String userID = "@123123123";
  //여행지 사진 주소 맵
  Map img = <int, String>{
    1: 'https://res.klook.com/image/upload/Mobile/City/g9ynzkjz1nsrvhrjml4j.jpg',
    2: 'https://res.klook.com/image/upload/Mobile/City/g9ynzkjz1nsrvhrjml4j.jpg',
  };
  Map title = <int, String>{
    1: '부산(임플 2조, 당일치기)',
    2: '부산(혼자여행, 1박 2일)'
  };
  Map route = <int, String>{
    1: '뭔가 DB 통해 보여주면 되지',
    2: '않을까 싶은데...'
  };
  Map review = <int, String>{
    1: '하하 너무 재밌다! 또 가고 싶어요~~~',
    2: '바다보다좋은코딩보다좋은여행보다좋은플러터보다좋은부산바다 기기'
  };

  Column myRoute(int num, ){
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Image.network(img[num], width: MediaQuery.of(context).size.width*0.04, height: MediaQuery.of(context).size.height*0.1, fit: BoxFit.cover,)),
            SizedBox(width: MediaQuery.of(context).size.height*0.02,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    '${title[num]}',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 20, fontFamily: 'KBIZgo', color: Colors.black),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                  Text(
                    '${route[num]}',
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
      ],
    );
  }
  Column myReview(int num, ){
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Image.network(img[num], width: MediaQuery.of(context).size.width*0.04, height: MediaQuery.of(context).size.height*0.1, fit: BoxFit.fill,)),
            SizedBox(width: MediaQuery.of(context).size.height*0.02,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    '${title[num]}',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 20, fontFamily: 'KBIZgo', color: Colors.black),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                  Text(
                    '${review[num]}',
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kopub'),
      home: Scaffold(
        appBar: AppBar(title: Text('Grouney',
          style: TextStyle(fontFamily: 'KBIZgo', fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),),
          backgroundColor: Palatte.myskyblue,),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
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
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.025),
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
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      for(int num = 1; num <= 2; num++)
                        myRoute(num),
                      TextButton(onPressed: (){}, child: Text('더보기', style: TextStyle(color: Palatte.myblue))),
                  ],
                ),),
                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                //내 여행 후기
                Container(
                  decoration: BoxDecoration(
                    color: Palatte.mygray,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.025),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('내 여행 후기',
                        style: TextStyle(color: Palatte.mynavy,
                            fontFamily: "KBIZgo", fontWeight: FontWeight.w700, fontSize: 32),
                      ), SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Container(height: 3, width: MediaQuery.of(context).size.width*0.4, color: Colors.black.withOpacity(0.3),),
                      SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                      Container(height: 3, width: MediaQuery.of(context).size.width*0.4, color: Colors.black.withOpacity(0.3),),
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      for(int num = 1; num <= 2; num++)
                        myReview(num),
                      TextButton(onPressed: (){}, child: Text('더보기', style: TextStyle(color: Palatte.myblue))),
                    ],
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
