import 'package:flutter/material.dart';
import '../appstyle/style.dart';
import 'pinkButton.dart';

Container welcomePages(BuildContext context, String image, String text, void Function()? onTap) {
  
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
    )),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
          Image.asset(image, height: MediaQuery.of(context).size.height*0.6),
          SizedBox(height: 100),
          Container(
            height: 100,
            child: Text(text, style: welcome,textAlign: TextAlign.center,)),
          SizedBox(height: 50),
          pinkButton('Дальше', onTap)
        ],
      ),
    ),);
  }



