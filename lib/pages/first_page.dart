import 'package:flutter/material.dart';
import 'package:pawwws/pages/second_page.dart';
import '../components/welcomePages.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomePages(context, 'assets/logo.png', 'Подарите питомцам больше любви',(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
   } )
    );
  }
}