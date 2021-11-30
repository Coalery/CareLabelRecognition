import 'package:flutter/material.dart';
import 'package:label_recognition_app/detergent_recommend_page.dart';
import 'package:label_recognition_app/recognize_label_page.dart';
import 'package:label_recognition_app/select_label_page.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                child: Text('지도'),
                onPressed: () async {
                  await launch('https://m.map.naver.com/search2/search.naver?query=%EC%84%B8%ED%83%81%EC%86%8C&sm=hty&style=v5#/map/1');
                },
              ),
              TextButton(
                child: Text('세탁 라벨 인식하기'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RecognizeLabelPage())
                  );
                },
              ),
              TextButton(
                child: Text('수동 필터 검색 화면'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SelectLabelPage())
                  );
                },
              ),
              TextButton(
                child: Text('세제 추천 페이지'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DetergentRecommendPage())
                  );
                },
              ),
            ],
          ),
        )
      )
    );
  }
}