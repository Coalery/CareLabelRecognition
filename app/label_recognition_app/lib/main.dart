import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                child: Text('지도'),
                onPressed: () async {
                  await launch('https://m.map.naver.com/search2/search.naver?query=%EC%84%B8%ED%83%81%EC%86%8C&sm=hty&style=v5#/map/1');
                },
              )
            ],
          )
        )
      ),
    );
  }
}
