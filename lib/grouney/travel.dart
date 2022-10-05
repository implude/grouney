import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouney/main.dart';
import 'package:grouney/models/group_data.dart';
import 'package:grouney/widgets/appbar.dart';

class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments as GroupData;
    return Scaffold(
      appBar: getDefaultAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: context.heightTransformer(dividedBy: 30),
                left: context.widthTransformer(dividedBy: 20)),
            child: Row(
              children: [
                Image.asset("assets/images/부산.png",
                    width: context.widthTransformer(dividedBy: 2.2)),
                SizedBox(width: context.widthTransformer(dividedBy: 64)),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(data.name,
                            style: const TextStyle(
                              fontFamily: "KBIZgo",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            )),
                        SizedBox(
                          width: context.widthTransformer(dividedBy: 40),
                        ),
                        const Icon(Icons.location_on),
                        Text(data.destination,
                            style: const TextStyle(
                              fontFamily: "KBIZgo",
                              fontWeight: FontWeight.bold,
                              fontSize: 12.53,
                            )),
                      ],
                    ),
                    Text("${data.people.length}명의 멤버들",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "KBIZgo",
                            fontSize: 13)),
                    Text("멤버: ${data.people.join(", ")}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "KBIZgo",
                            fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 5,
            width: context.widthTransformer(dividedBy: 1.2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Palatte.myskyblue,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.widthTransformer(dividedBy: 8)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _TravelButton(
                        width: context.widthTransformer(dividedBy: 3),
                        vertical: 24,
                        title: "경로 템플릿",
                        icon: Icons.route,
                        onPressed: () {}),
                    _TravelButton(
                        width: context.widthTransformer(dividedBy: 3.1),
                        vertical: 12,
                        title: "그룹관리",
                        icon: Icons.group,
                        onPressed: () {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _TravelButton(
                      width: context.widthTransformer(dividedBy: 3.2),
                      vertical: 24,
                      title: "예상비용",
                      icon: Icons.money,
                      onPressed: () {},
                    ),
                    _TravelButton(
                        width: context.widthTransformer(dividedBy: 2.8),
                        vertical: 12,
                        title: "투표현황",
                        icon: Icons.how_to_vote,
                        onPressed: () {})
                  ],
                ),
                _TravelButton(
                    width: double.infinity,
                    vertical: 24,
                    title: "여행 경로",
                    icon: Icons.route,
                    onPressed: () {})
              ]
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: e,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class _TravelButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final double width;
  final double vertical;

  const _TravelButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    required this.width,
    required this.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(vertical: vertical),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(4, 4),
                ),
              ],
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: "KBIZgo",
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Icon(
                icon,
                size: 32,
              )
            ],
          ),
        ),
        onPressed: onPressed);
  }
}
