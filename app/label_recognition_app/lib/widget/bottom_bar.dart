import 'package:flutter/material.dart';
import 'package:label_recognition_app/pages/recognize_label_page.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera'
        )
      ],
      onTap: (idx) async {
        if(idx == 0) {
          await launch('https://m.map.naver.com/search2/search.naver?query=%EC%84%B8%ED%83%81%EC%86%8C&sm=hty&style=v5#/map/1');
        } else if(idx == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => RecognizeLabelPage())
          );
        }
      }
    );
  }
}