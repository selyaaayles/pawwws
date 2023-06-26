import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';
import 'package:pawwws/components/categoriesWidget.dart';
import '../components/homeAppBar.dart';
import '../components/itemWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: yellow.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(
              // Search
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Row(
                    children: [Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 250,
                      child: TextFormField(
                        cursorColor: pink,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'поиск',
                          hintStyle: greytxt,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search, color: pink)
                    ],
                  ),
                ),

                // Category
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20
                  ),
                  child: Text('Категории',style: blacktxt,),
                ),
                CategoriesWidget(),

                // Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text('Хит продаж',style: blacktxt),
                ),

                ItemsWidget(),
              ],
            ),
          )
        ],
      ),
     bottomNavigationBar: 
     CurvedNavigationBar(
      onTap: (index) {
        
      },
      backgroundColor: Colors.transparent,
      color: pink,
      height: 60,
      items: [
      Icon(Icons.home, size: 30,color: white),
      Icon(Icons.search, size: 30,color: white),
      Icon(Icons.location_on, size: 30,color: white),
      Icon(Icons.account_circle, size: 30,color: white)
     ]),
    );
  }}

  