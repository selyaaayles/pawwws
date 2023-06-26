import 'package:flutter/material.dart';
import 'package:pawwws/pages/home_page.dart';
import 'package:pawwws/pages/login_page.dart';
import '../appstyle/style.dart';
import '../components/pinkButton.dart';
import '../components/textField.dart';

class SignUpPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

   SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
    )),
    child:Padding(
      padding: const EdgeInsets.all(36),
      child: Column(
        children: [
          Image.asset('assets/logo.png', height: 200),
          SizedBox(height: 30),
          Text('Вход',style: welcome),
          SizedBox(height: 42),
          
          // email
          textField(emailController, 'почта', false),
          SizedBox(height: 22),
          // password
          textField(passwordController, 'пароль', true),
          
          // Account text
          SizedBox(height: 216),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text('еще нет аккаунта?', style: greytxt),
            InkWell(child: Text('создать', style: yellowtxt),
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
           },
            ),
          ],),
          SizedBox(height: 16),
          pinkButton('войти', () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
           })
       ] ),
    ),
          
        ));
  }}