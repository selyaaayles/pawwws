import 'package:flutter/material.dart';
import 'package:pawwws/pages/cart_page.dart';
import '../appstyle/style.dart';
import 'package:badges/badges.dart' as badges;


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: white,
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Icon(Icons.sort, size: 30, color: pink),
              Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Text('зоомагазин', style: welcome,),
              ),
              Spacer(),
              badges.Badge(
                badgeStyle: badges.BadgeStyle(badgeColor: pink),
                badgeContent: Text(
                  '3', style: TextStyle(color: white),
                ),
                
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                  },
                  child: Icon(Icons.shopping_bag_outlined, size: 30, color: yellow,),
                ),
              )
            ],
          ),
        );
  }
}
