import 'package:flutter/material.dart';
import 'package:grouney/main.dart';

void main() => runApp(feeCal());

class feeCal extends StatefulWidget {
  const feeCal({Key? key}) : super(key: key);

  @override
  State<feeCal> createState() => _feeCalState();
}


class _feeCalState extends State<feeCal> {
  Map indexData = <int, String>{
    1: 'icecream',
    2: '00고기 무한리필',
    3: '부산롯월',
    4: '불꽃놀이',
    5: '수상레저'
  };
  Map feeData = <int, int>{
    1: 1111111,
    2: 3914,
    3: 21234,
    4: 909090,
    5: 1231423,
  };
  Map iconData = <int, String>{
    1:'dd',
  };
  // static const data = [
  //   '아이스크림',
  //   'OO고기 무한리필',
  //   '부산롯월',
  //   '불꽃놀이',
  //   '수상레저',
  // ];

  Column feeList (int num,){
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.dashboard),  //변경필요
            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            Text(indexData[num]),
            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            Text('-'),
            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            Text('${feeData[num]}')
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.01,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kopub'),
      home: Scaffold(
        appBar: AppBar(title: Text('비용계산기',
          style: TextStyle(fontFamily: 'KBIZgo', fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),),
          leading: Icon(Icons.arrow_back),
          backgroundColor: Palatte.myskyblue,),
        body: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  for(int num = 1; num<5;num++) feeList(num)
                ],
              ),
            )
            // ListView.builder(
            //   itemCount: fee.length,
            //     itemBuilder: (BuildContext context, int index){
            //     return Container(
            //       height: MediaQuery.of(context).size.height*0.03,
            //       child: Row(
            //         children: [
            //           Icon(Icons.dashboard),
            //           SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            //           Text(data[index]),
            //           SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            //           Text('-'),
            //           SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            //           Text('${fee[index]}')
            //         ],
            //       )
            //     );
            //     })
          ],
        ),
      ),
    );
  }
}
