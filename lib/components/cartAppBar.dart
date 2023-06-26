import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30, color: pink),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text('Корзина', style: welcome,)),
          Spacer(),
          Icon(Icons.more_vert,size: 30, color: pink)
        ],
      ),
    );
  }
}