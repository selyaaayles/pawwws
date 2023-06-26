import 'package:flutter/material.dart';
import 'package:pawwws/pages/third_page.dart';
import '../components/welcomePages.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomePages(context, 'assets/zoo.png', 'Зоомагазин для лучшей заботы о питомцах',(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
   } )
    );
  }
}