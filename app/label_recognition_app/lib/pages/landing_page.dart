import 'package:flutter/material.dart';
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
            SizedBox(height: 10.0),
            SizedBox(
              height: 180,
              width :180,
              child: Image.asset('assets/setakgi.png'),
            ),
            Column(
              children: [
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
          ]
        )
      )
    );
  }
}