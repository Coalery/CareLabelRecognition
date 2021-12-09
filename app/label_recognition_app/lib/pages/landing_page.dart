import 'package:flutter/material.dart';
import 'package:label_recognition_app/constant.dart';
import 'package:label_recognition_app/pages/home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Constant.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 32.0),
            SizedBox(
              height: 240,
              width :240,
              child: Image.asset('assets/setakgi.png'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('세탁 시작하기!'),
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage())
                );
              }
            )
          ]
        )
      )
    );
  }
}