import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouney/main.dart';

class Home extends StatelessWidget {
  final _dataList = [
    _GroupData("그룹명", ["사람1", "사람2", "사람3"]),
    _GroupData("임플루드", ["김석환", "김성훈", "박은서", "이동헌"])
  ];

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: context.heightTransformer(dividedBy: 11.6),
          automaticallyImplyLeading: false,
          title: const Text(
            "Grouney",
            style: TextStyle(
                fontSize: 36, fontFamily: "KBIZgo", color: Colors.black),
          ),
          backgroundColor: Palatte.myskyskyblue,
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor:
                      MaterialStateProperty.all(Palatte.myskyskyblue),
                ),
                onPressed: () {},
                child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 40,
                      ),
                    )))
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.heightTransformer(dividedBy: 20)),
        child: ListView.separated(
            itemBuilder: (_, index) =>
                Center(child: _GroupItem(data: _dataList[index])),
            separatorBuilder: (_, __) =>
                SizedBox(height: context.heightTransformer(dividedBy: 50)),
            itemCount: _dataList.length),
      ),
    );
  }
}

class _GroupItem extends StatelessWidget {
  final _GroupData data;

  const _GroupItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("assets/images/group_outline.png"),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(data.name,
              style: const TextStyle(fontSize: 24, fontFamily: "KBIZgo")),
          Text(data.people.join(" "))
        ]),
      )
    ]);
  }
}

class _GroupData {
  final String name;
  final List<String> people;

  _GroupData(this.name, this.people);
}
