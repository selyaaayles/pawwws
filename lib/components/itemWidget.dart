import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';
import 'package:pawwws/pages/item_page.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
  List images=['assets/items/1.jpg','assets/items/2.jpg','assets/items/3.jpg','assets/items/4.jpg','assets/items/5.jpg','assets/items/6.jpg','assets/items/7.jpg','assets/items/8.jpg','assets/items/9.jpg'];
  List title=['Whiskas', 'toy', 'miratorg', 'perevozka','odezda', 'domik', 'perevozka','igrushka', 'osheynik'];
    return GridView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: title.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
    childAspectRatio:0.68,
    ),
    itemBuilder: (BuildContext context, int index) { 
      return   Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text('-50%', style: whitesmall),
                ),
                Icon(Icons.favorite_border, color: pink,)
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(images[index], height: 100, width: 100),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text(title[index], style: blacktxt),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('descrition', style: greydarktxt,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$2', style: blacktxt),
                  Icon(Icons.add_shopping_cart_outlined, color: yellow,)
                ],
              )
          ],
        ),
      );
     },
    );
  }
}