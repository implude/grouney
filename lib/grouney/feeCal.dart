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




  @override
  Widget build(BuildContext context) {
    const fee = [
      {
        'icon':'-',
        'title':'iceCream',
        'fee':'500'
      },
      {
        'icon':'-',
        'title':'hihihi',
        'fee':'500'
      },
      {
        'icon':'-',
        'title':'tezst',
        'fee':'500'
      },
      {
        'icon':'-',
        'title':'eeeee',
        'fee':'500'
      },
      {
        'icon':'-',
        'title':'ddddddddddd',
        'fee':'500'
      },
      {
        'icon':'-',
        'title':'iceCasfdasdream',
        'fee':'500'
      },
    ];
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kopub'),
      home: Scaffold(
        appBar: AppBar(title: Text('비용계산기',
          style: TextStyle(fontFamily: 'KBIZgo', fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),),
          leading: Icon(Icons.arrow_back),
          backgroundColor: Palatte.myskyblue,),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: fee.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.abc),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                              text: '${fee[index]['title']}',
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.2,
                          child: RichText(
                            textAlign: TextAlign.end,
                            text: TextSpan(
                              text: '₩${fee[index]['fee']}',

                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            TextButton(onPressed: (){},
              style: ,
                child: Text('비용 추가하기',
                  style: TextStyle(
                    fontFamily: 'KBIZgo', fontSize: 15, fontWeight: FontWeight.w700
                  ),),
            ),
          ],
        ),
      ),
    );
  }
}

// class FeeList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return ListView.separated(
//       itemCount: ,
//         itemBuilder: (context, index){
//
//
//         },
//         separatorBuilder: separatorBuilder,
//     );
//   }
// }
// class Item{
//   int fee;
//   String index;
//   String icon;
//   Item(this.fee, this.index,this.icon);
// }
// class feeTile extends StatelessWidget{
//   feeTile(this._item);
//   final Item _item;
//   @override
//   Widget build(BuildContext context){
//     return ListTile(
//       leading: Icon(Icons.abc), //변경필요
//       title: Text('${_item.index}-₩${_item.fee}'),
//     );
//   }
// }