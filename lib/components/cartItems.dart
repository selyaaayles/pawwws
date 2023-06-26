import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i=1; i<4;i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10
          ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Radio(value: '', groupValue: '', onChanged: (index){}, activeColor: pink),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset('assets/items/$i.jpg'),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('title', style: blacktxt),
                  Text('\$2', style: blacktxt)
                ],
              )),
              Spacer(),
              Padding(padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete, color: pink,size: 30),
                  Row(
                    children: [Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          color: yellow.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )]
                      ),
                      child: Icon(CupertinoIcons.plus, size: 18,color: pink),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('01',style: blacktxt),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          color: yellow.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )]
                      ),
                      child: Icon(CupertinoIcons.minus, size: 18,color: pink),
                    )],
                  )
                ],
              ),),
            ],
          ),
        )
      ],
    );
  }
}