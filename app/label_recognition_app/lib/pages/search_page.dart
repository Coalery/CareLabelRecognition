import 'package:flutter/material.dart';
import 'package:label_recognition_app/constant.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                 child: Text(
                   "S.O.S",
                   style: TextStyle(fontSize: 20.0),
                   ),
                   style: ElevatedButton.styleFrom(
                     primary: Colors.red[200],
                     shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        elevation: 0.0
                   ),
                 ),
          ],
        ) ,)
      );

  }
}