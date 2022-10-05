import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouney/main.dart';
import 'package:grouney/models/group_data.dart';
import 'package:grouney/widgets/appbar.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  final _dataList = [
    GroupData(
        name: "그룹명",
        people: ["사람1", "사람2", "사람3"],
        dateRange: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
        destination: "부산"),
    GroupData(
        name: "임플루드",
        people: ["김석환", "김성훈", "박은서", "이동헌"],
        dateRange: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
        destination: "부산"),
    GroupData(
        name: "아예",
        people: ["환석김", "재신오", "승연김"],
        dateRange: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
        destination: "천춘"),
    GroupData(
        name: "아예",
        people: ["환석김", "재신오", "승연김"],
        dateRange: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
        destination: "천춘"),
  ];

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getDefaultAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.heightTransformer(dividedBy: 20)),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (_, index) => Center(
                child: _GroupItem(
                    data: index == _dataList.length ? null : _dataList[index])),
            separatorBuilder: (_, __) =>
                SizedBox(height: context.heightTransformer(dividedBy: 50)),
            itemCount: _dataList.length + 1),
      ),
    );
  }
}

class _GroupItem extends StatelessWidget {
  final GroupData? data;

  const _GroupItem({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        if(data != null) Get.toNamed("/travel", arguments: data);
      },
      child: Container(
          width: context.widthTransformer(dividedBy: 1.2),
          height: context.heightTransformer(dividedBy: 9),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/group_outline.png"))),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.widthTransformer(dividedBy: 18)),
            child: data == null
                ? IconButton(
                    iconSize: 32, onPressed: () {}, icon: const Icon(Icons.add))
                : Row(children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(data!.name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: "KBIZgo",
                                      fontWeight: FontWeight.bold)),
                              const Icon(
                                Icons.location_on,
                                color: Palatte.myblue,
                                size: 40,
                              ),
                              Column(children: () {
                                final formatter = DateFormat("M/dd");
                                final range = data!.dateRange;
                                return [
                                  "${formatter.format(range.start)}~${formatter.format(range.end)}",
                                  "${data!.destination} 여행"
                                ]
                                    .map((e) => Text(e,
                                        style: const TextStyle(
                                            color: Palatte.myblue,
                                            fontFamily: "KBIZgo",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10)))
                                    .toList();
                              }())
                            ],
                          ),
                          Text(data!.people.join(", "),
                              style: const TextStyle(
                                  color: Color(0xFFC8C8C8),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "KBIZgo")),
                        ]),
                    const Expanded(child: SizedBox.shrink()),
                    Image.asset("assets/images/부산.png", scale: 6)
                  ]),
          )),
    );
  }
}
