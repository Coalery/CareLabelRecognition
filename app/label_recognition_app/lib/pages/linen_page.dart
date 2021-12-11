import 'package:flutter/material.dart';

class LinenPage extends StatelessWidget {
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
                  backgroundImage: AssetImage('assets/linen.jpg'),
                  radius: 80.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  child: Text(
                    '린넨',
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
                    '30도 이하의 미지근한 물에서 중성세제로 손세탁하거나 세탁기를 부드러운 세탁 단계로 설정하세요.',
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
                          '-손세탁시 너무 강하게 주무르거나 비틀면 옷의 형태가 변하기 때문에 주의해야 합니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-세탁기를 이용하면 세탁망을 사용하는 것을 추천합니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-청바지나 색깔 있는 면 티셔츠와 변색의 위험이 있으므로 같이 세탁하는 것을 주의해야 합니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-옷 모양을 잡은 후 그늘에서 건조하면 주름이 생기는 것을 방지할 수 있습니다.',
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
