import 'package:flutter/material.dart';

class CottonPage extends StatelessWidget {
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
                  backgroundImage: AssetImage('assets/cotton.png'),
                  radius: 80.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  child: Text(
                    '면',
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
                    '중성세제 또는 약산성 전용 세제를 사용하여 차가운 물 또는 미지근한 물로 손세탁하거나 세탁기를 이용하세요.',
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
                          '-일반세제로 세탁하시면 줄어들거나 변형이 올 수 있습니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-손 세탁 시 제품을 뒤집어서 세탁해주세요.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-색깔이 있는 제품은 세탁과정에서 물 빠짐이 있을 수 있으니 단독세탁을 추천합니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-장시간 물에 담가두면 탈색의 가능성이 있으므로 즉시 세탁하도록 합니다.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-염소표백제를 사용할 시 물에 중화시켜서 세탁 망에 넣은 후 세탁해주세요.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-변형방지를 위해 세탁 망에 넣은 후 세탁해주세요.',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '-기계세탁 이용 시 탈수과정에서 면이 늘어날 수 있으므로 탈수 시간을 짧게 해주세요.',
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
