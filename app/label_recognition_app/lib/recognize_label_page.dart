import 'package:flutter/material.dart';

class RecognizeLabelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text(
                '세탁 라벨 인식하기',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                '세탁 라벨이 네모 안에 다 들어오도록 카메라를 조정해주세요.',
                style: TextStyle(
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}