import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';

class CategoriesWidget extends StatelessWidget {
   CategoriesWidget({super.key});
 final List categimages =['assets/categories/1.png','assets/categories/2.png','assets/categories/3.png','assets/categories/4.png','assets/categories/5.png','assets/categories/6.png'];
 final List categname=['корм','одежда','ошейники','игрушки','перевозки','оборудование',];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categname.length,
        itemBuilder: (BuildContext context, int index) { 
         return Container(
           margin: EdgeInsets.symmetric(horizontal: 10),
           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
           decoration: BoxDecoration(
             color: white,
             borderRadius: BorderRadius.circular(20)
           ),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Image.asset(categimages[index], width: 40,
               height: 40,),
               Text(categname[index], style: greydarktxt,)
             ],
           ),
         );
         }
      ),
    );
  }
}