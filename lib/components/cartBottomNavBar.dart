import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';
import 'package:pawwws/components/pinkButton.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Общаяя сумма:', style: blacktxt),
                Text('\$25', style: pinktxt)
              ],
            ),
            pinkButton('Оплатить', () { })
          ],
        ),
      ),
    );
  }
}