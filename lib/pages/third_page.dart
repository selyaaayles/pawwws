import 'package:flutter/material.dart';
import 'package:pawwws/pages/fourth_page.dart';
import '../components/welcomePages.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomePages(context, 'assets/adopt.png', 'Найдите нового друга',(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage()));
   } ));
  }
}