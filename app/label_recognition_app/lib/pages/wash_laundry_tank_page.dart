import 'package:flutter/material.dart';
import 'package:label_recognition_app/constant.dart';

class WashLaundryTankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: Text(
          Constant.name,
          style: TextStyle(
            color:Colors.white,
            letterSpacing: 2.0,
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        toolbarHeight: 70
      ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                '세탁조는 어떻게 세척할까요?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 16.0),
            _Content(
              title: '| 통돌이 세탁기',
              items: [
                "40도 이상 온수를 세탁조에 가득 채워줍니다.",
                "전용 세탁조 세제를 세탁기 통에 붓고, 5~10분간 세탁기를 작동시켜 세정제 분말을 완전히 녹입니다.",
                "90분 정도 그대로 놓아 둡니다. 다만, 장시간 방치하면 고장의 원인이 될 수 있으니, 너무 오래 두면 안됩니다.",
                "세탁 > 헹굼 > 탈수 과정을 1번 진행합니다. 물 수위는 최대고수위로 해줍니다."
              ]
            ),
            SizedBox(height: 16.0),
            _Content(
              title: '| 드럼 세탁기',
              items: [
                "세탁조에 분말 세제를 넣어줍니다.",
                "뚜껑을 닫고 표준 코스로 약 90분 돌려줍니다. 물의 온도가 높을수록 효과가 좋아집니다.",
                "오염이 심하면 표준코스를 반복합니다."
              ]
            )
          ],
        )
      )
    );
  }
}

class _Content extends StatelessWidget {
  final String title;
  final List<String> items;
  
  _Content({
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        Table(
          columnWidths: {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(9)
          },
          children: List.generate(items.length, (index) => TableRow(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Text(
                  '${index + 1}.',
                  style: TextStyle(fontSize: 16)
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Text(
                  items[index],
                  style: TextStyle(fontSize: 16)
                )
              )
            ]
          )),
        )
      ],
    );
  }
}