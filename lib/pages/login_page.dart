import 'package:flutter/material.dart';
import 'package:pawwws/components/pinkButton.dart';
import 'package:pawwws/components/textField.dart';
import 'package:pawwws/pages/home_page.dart';
import '../appstyle/style.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

   LoginPage({super.key});

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
          Text('Регистрация',style: welcome),
          SizedBox(height: 42),
          // name
          textField(usernameController, 'имя', false),
          SizedBox(height: 22),
          // phone
          textField(phoneController, 'телефон', false),
          SizedBox(height: 22),
          // email
          textField(emailController, 'почта', false),
          SizedBox(height: 22),
          // password
          textField(passwordController, 'пароль', true),
          
          // Account text
          SizedBox(height: 84),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text('уже есть аккаунт?', style: greytxt),
            InkWell(child: Text('войти', style: yellowtxt),
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
            },
            ),
          ],),
          SizedBox(height: 16),
          pinkButton('зарегистрироваться', () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
           })
       ] ),
    ),
          
        ));
  }}