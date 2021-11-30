import 'package:flutter/material.dart';

class MenuItem {
  final List<String> items;
  final String? title;
  int selectedIndex;

  MenuItem({
    required this.items,
    required this.selectedIndex,
    this.title,
  });
}

class MenuSelector extends StatelessWidget {
  final MenuItem item;
  final void Function(int) onChange;

  MenuSelector({
    required this.item,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(item.title != null) ... {
          FittedBox(
            fit: BoxFit.fitWidth, 
            child: Text(
              item.title!,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            )
          ),
          SizedBox(height: 8),
        },
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: item.items.length,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            itemBuilder: (_, idx) => GestureDetector(
              child: Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  border: idx == item.selectedIndex ? Border.all(
                    color: Color(0xFF4285F4),
                    width: 4
                  ) : null
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    item.items[idx],
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ),
              ),
              onTap: () => onChange(idx),
            ),
            separatorBuilder: (_, idx) => SizedBox(width: 8),
          )
        )
      ],
    );
  }
}