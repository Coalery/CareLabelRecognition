import 'package:flutter/material.dart';
import 'package:label_recognition_app/constant.dart';
import 'package:label_recognition_app/data/wash_symbol.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';

class RecognizeResultPage extends StatelessWidget {
  final List<String> results;

  RecognizeResultPage({
    required this.results
  });

  @override
  Widget build(BuildContext context) {
    print(results);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Constant.name,
            style: TextStyle(
              color:Colors.white,
              letterSpacing: 2.0,
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          toolbarHeight: 70
        ),
        bottomNavigationBar: BottomBar(),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                '선택한 세탁 라벨',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            results.isNotEmpty ? _Result(results: results) : _NoData()
          ],
        )
      )
    );
  }
}

class _Result extends StatefulWidget {
  final List<String> results;

  _Result({
    required this.results
  });

  @override
  __ResultState createState() => __ResultState();
}

class __ResultState extends State<_Result> {
  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: widget.results.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, idx) {
              WashSymbol data = washSymbols[widget.results[idx]]!;
              return GestureDetector(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: idx == selectedIcon ? Border.all(
                      color: Color(0xFF4285F4),
                      width: 4
                    ) : null
                  ),
                  child: Image.asset(data.iconUrl),
                ),
                onTap: () {
                  setState(() {
                    selectedIcon = idx;
                  });
                },
              );
            },
          )
        ),
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: washSymbols[widget.results[selectedIcon]]!.description.map(
            (item) => Column(
              children: [
                SizedBox(height: 4.0),
                Text(item, style: TextStyle(fontSize: 18))
              ],
            )
          ).toList()
        )
      ],
    );
  }
}

class _NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      alignment: Alignment.center,
      child: Text(
        '인식된 아이콘이 없습니다.',
        style: TextStyle(
          fontSize: 16
        ),
      ),
    );
  }
}