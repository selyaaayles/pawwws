import 'package:flutter/material.dart';
import 'package:pawwws/pages/login_page.dart';
import '../components/welcomePages.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomePages(context, 'assets/sitters.png', 'Пет-ситтеры,которые присмотрят за вашим питомцем ', (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      })
    );
  }
}