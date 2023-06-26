import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';
import '../components/cartAppBar.dart';
import '../components/cartBottomNavBar.dart';
import '../components/cartItems.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: [
          CartAppBar(),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: yellow.withOpacity(0.1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                CartItems(),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: pink,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.add, color: white),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal:10),
                      child: Text('Добавить промокод', style: blacktxt,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}