import 'package:flutter/material.dart';
import 'package:label_recognition_app/data/detergent.dart';
import 'package:label_recognition_app/pages/detergent_result_page.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';
import 'package:label_recognition_app/widget/menu_selector.dart';

import '../constant.dart';

class DetergentRecommendPage extends StatefulWidget {
  @override
  _DetergentRecommendPageState createState() => _DetergentRecommendPageState();
}

class _DetergentRecommendPageState extends State<DetergentRecommendPage> {
  List<MenuItem> items = [
    MenuItem(
      title: '세탁물을 선택하세요.',
      items: ['옷', '수건', '인형', '이불', '이이이', '불불불'],
      selectedIndex: -1
    ),
    MenuItem(
      title: '세탁물의 재질을 선택하세요.',
      items: ['면', '울', '레이온', '실크'],
      selectedIndex: -1
    ),
    MenuItem(
      title: '원하는 향기를 선택하세요.',
      items: ['화이트머스크', '플로럴', '프루티', '시트론'],
      selectedIndex: -1
    )
  ];

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
        bottomNavigationBar: BottomBar(),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Column(
                children: List.generate(5, (idx) {
                  if(idx % 2 == 0) {
                    return MenuSelector(
                      item: items[idx ~/ 2],
                      onChange: (v) => setState(() => items[idx ~/ 2].selectedIndex = v),
                    );
                  } else {
                    return SizedBox(height: 16);
                  }
                }),
              ),
              SizedBox(height: 32),
              SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF4285F4)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                    )
                  ),
                  child: Text(
                    '선택 완료',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                  onPressed: () {
                    // TODO
                    List<int> result = items.map((item) => item.selectedIndex).toList();
                    print(result);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => DetergentResultPage(detergent: detergents['downy-premium']!)
                    ));
                  },
                ),
              )
            ],
          ),
        )
      )
    );
  }
}