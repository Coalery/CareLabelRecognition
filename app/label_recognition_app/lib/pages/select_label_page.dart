import 'package:flutter/material.dart';
import 'package:label_recognition_app/constant.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';

class SelectLabelPage extends StatefulWidget {
  @override
  _SelectLabelPageState createState() => _SelectLabelPageState();
}

class _SelectLabelPageState extends State<SelectLabelPage> {
  List<int> data = [-1, -1, -1, -1];

  @override
  Widget build(BuildContext context) {
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
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '이미지 인식이 어려울 때\n라벨을 확인한 후\n세탁 표시 기호를 선택해주세요.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  _Selector(
                    data: data,
                    iconUrl: [
                      'assets/icon1-1.png',
                      'assets/icon1-2.png',
                      'assets/icon2-1.png',
                      'assets/icon3-1.png'
                    ],
                    onChange: (idx, select) {
                      setState(() {
                        data[idx] = select;
                      });
                    },
                  ),
                  SizedBox(height: 32),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF4285F4)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                        )
                      ),
                      child: Text(
                        '선택 완료',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      onPressed: () {
                        // TODO
                        print(data);
                      },
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.grey, width: 2)
                      )
                    )
                  ),
                  child: Text(
                    '위에 해당하는 라벨이 없거나\n해외 제품인가요?',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    // TODO
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Selector extends StatelessWidget {
  final List<int> data;
  final List<String> iconUrl;
  final void Function(int, int) onChange;

  _Selector({
    required this.data,
    required this.iconUrl,
    required this.onChange
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      children: List.generate(4, (i) => TableRow(
        children: List.generate(5, (j) => GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              border: data[i] == j ? Border.all(
                color: Color(0xFF4285F4),
                width: 4
              ) : null
            ),
            child: Image.asset(iconUrl[i]),
          ),
          onTap: () => onChange(i, j),
        ))
      ))
    );
  }
}