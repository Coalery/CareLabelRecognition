import 'package:flutter/material.dart';

class ContentTable extends StatelessWidget {
  final String title;
  final List<String> items;
  
  ContentTable({
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        Table(
          columnWidths: {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(9)
          },
          children: List.generate(items.length, (index) => TableRow(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Text(
                  '${index + 1}.',
                  style: TextStyle(fontSize: 16)
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Text(
                  items[index],
                  style: TextStyle(fontSize: 16)
                )
              )
            ]
          )),
        )
      ],
    );
  }
}