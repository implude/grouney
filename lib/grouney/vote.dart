import 'package:flutter/material.dart';
import 'package:grouney/widgets/appbar.dart';

class Vote extends StatelessWidget {
  const Vote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getDefaultAppBar(title: "투표현황"),
      body: Column(
        children: const [
          _VoteWidget(subject: "점심식사", data: [
            _VoteData(option: "소불고기", percentage: 1 / 3),
            _VoteData(option: "항정살 숯불구이", percentage: 2 / 3)
          ])
        ],
      ),
    );
  }
}

class _VoteData {
  final String option;
  final double percentage;

  const _VoteData({
    required this.option,
    required this.percentage,
  });
}

class _VoteWidget extends StatelessWidget {
  final String subject;
  final List<_VoteData> data;

  const _VoteWidget({Key? key, required this.subject, required this.data})
      : super(key: key);

//자 동 완 성 도 안 되 고 너 가 다 만 들 어 버 리 면 나 는 무 엇 을 할 까?
  //ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.flag, color: Colors.red,),

      ],
    );
  }
}
