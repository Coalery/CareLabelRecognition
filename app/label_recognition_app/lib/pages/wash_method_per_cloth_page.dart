import 'package:flutter/material.dart';
import 'package:label_recognition_app/pages/cotton_page.dart';
import 'package:label_recognition_app/pages/linen_page.dart';
import 'package:label_recognition_app/pages/nylon_page.dart';

class WashMethodPerClothPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상단 바'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print("세탁 방법이 궁금하신 소재를 선택해주세요.");
                },
                child: Text(
                  "세탁 방법이 궁금하신 소재를 선택해주세요.",
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 0.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) => CottonPage()
                        ));
                      },
                      child: Text(
                        '면',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) => LinenPage()
                        ));
                      },
                      child: Text(
                        '린넨',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) => NylonPage()
                        ));
                      },
                      child: Text(
                        '나일론',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        print('니트/울');
                      },
                      child: Text(
                        '니트/울',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        print('데님');
                      },
                      child: Text(
                        '데님',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        print('실크');
                      },
                      child: Text(
                        '실크',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[600],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        print('아크릴');
                      },
                      child: Text(
                        '아크릴',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        print('침구류');
                      },
                      child: Text(
                        '침구류',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 137,
                    child: ElevatedButton(
                      onPressed: () {
                        print('기타');
                      },
                      child: Text(
                        '기타',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        elevation: 0.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Container(
                    width: 400,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        print("혼방 소재인 경우 세탁 라벨에 따라 세탁해주세요.");
                      },
                      child: Text(
                        "혼방 소재인 경우 세탁 라벨에 따라 세탁해주세요.",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey[500],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 0.0),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}