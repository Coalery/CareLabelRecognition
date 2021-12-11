import 'package:flutter/material.dart';
import 'package:label_recognition_app/data/detergent.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';
import 'package:label_recognition_app/widget/content_table.dart';

import '../constant.dart';

class DetergentResultPage extends StatelessWidget {
  final Detergent detergent;

  DetergentResultPage({
    required this.detergent
  });

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
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Image.asset(
              detergent.image
            ),
            SizedBox(height: 16.0),
            Container(
              alignment: Alignment.center,
              child: Text(
                detergent.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            ...detergent.description.map((desc) => Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ContentTable(
                title: desc.title,
                items: desc.contents,
              ),
            )).toList()
          ],
        ),
      )
    );
  }
}