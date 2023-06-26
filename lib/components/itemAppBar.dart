import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, size: 30,color: pink),
        ),
        Padding(padding: EdgeInsets.only(left: 20),
        child: Text('Product', style: welcome),
        ),
        Spacer(),
        Icon(Icons.favorite, size: 30,color: pink)
        ],
      ),
    );
  }
}