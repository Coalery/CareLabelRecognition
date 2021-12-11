import 'package:flutter/material.dart';

class NylonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('상단 바'),
          centerTitle: true,
        ),
        body: ListView(children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/nylon.jpg'),
                  radius: 80.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  child: Text(
                    '나일론',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(width: 350.0, height: 1.0, color: Colors.black),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: 360,
                  height: 100,
                  child: Text(
                    '중성세제나 약알칼리성 세제를 사용하여 뜨겁지 않은 물에 손세탁하거나 기계세탁을 해주세요.',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(width: 350.0, height: 1.0, color: Colors.black),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                    width: 360,
                    child: Column(
                      children: [
                        Text(
                          '-물에 오래 두게 되면 물빠짐과 이염이 발생할 수 있습니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-이염이 되었을 시 잘 빠지지 않기 때문에 바로 세탁을 해주는 것이 좋습니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-표백제는 사용하지 않는 것을 추천하며 강하게 비틀거나 짜지 않는 것이 좋습니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-세탁기 사용 시 세탁망을 이용하는 것이 좋습니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                         SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-열에 약하기 때문에 드라이클리닝은 자주 하지 않는 것이 좋습니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ]));
  }
}
