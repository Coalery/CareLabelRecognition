import'package:flutter/material.dart';
import 'package:label_recognition_app/constant.dart';
import 'package:label_recognition_app/pages/detergent_recommend_page.dart';
import 'package:label_recognition_app/pages/recognize_label_page.dart';
import 'package:label_recognition_app/pages/wash_laundry_tank_page.dart';
import 'package:label_recognition_app/pages/wash_method_per_cloth_page.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.grey[850],
              ),
              title: Text('옷감별 세탁방법'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => WashMethodPerClothPage()
                ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.camera,
                color: Colors.grey[850],
              ),
              title: Text('세탁기호 검색'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => RecognizeLabelPage()
                ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                color: Colors.grey[850],
              ),
              title: Text('내 주변 세탁소 검색'),
              onTap: () async {
                await launch('https://m.map.naver.com/search2/search.naver?query=%EC%84%B8%ED%83%81%EC%86%8C&sm=hty&style=v5#/map/1');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.grey[850],
              ),
              title: Text('세탁조 정화 방법'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => WashLaundryTankPage()
                ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.grey[850],
              ),
              title: Text('세제/섬유유연제 추천'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => DetergentRecommendPage()
                ));
              },
            ),
          ],
        )
      ),
      body: SafeArea(
        child: Scaffold(
          body: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              _HomePageMenu(
                color: Colors.blue[100]!,
                text: '옷감별 세탁방법 알아보기',
                onClick: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => WashMethodPerClothPage()
                  ));
                },
              ),
              _HomePageMenu(
                color: Colors.blue[50]!,
                text: '세탁 기호 검색',
                onClick: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => RecognizeLabelPage()
                  ));
                },
              ),
              _HomePageMenu(
                color: Colors.blue[100]!,
                text: '내 주변 세탁소 찾기',
                onClick: () async {
                  await launch('https://m.map.naver.com/search2/search.naver?query=%EC%84%B8%ED%83%81%EC%86%8C&sm=hty&style=v5#/map/1');
                },
              ),
              _HomePageMenu(
                color: Colors.blue[50]!,
                text: '세제 추천',
                onClick: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => DetergentRecommendPage()
                  ));
                },
              ),
              _HomePageMenu(
                color: Colors.blue[100]!,
                text: '세탁조 정화방법',
                onClick: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => WashLaundryTankPage()
                  ));
                },
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        )
      )
    );
  }
}

class _HomePageMenu extends StatelessWidget {
  final Color color;
  final String text;
  final void Function() onClick;

  _HomePageMenu({
    required this.color,
    required this.text,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color:Colors.black,
              letterSpacing: 2.0,
              fontSize: 16.0,
              fontWeight: FontWeight.normal
            )
          )
        )
      ),
      onTap: onClick,
    );
  }
}