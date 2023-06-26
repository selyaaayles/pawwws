 import 'package:flutter/material.dart';

import '../appstyle/style.dart';

TextField textField(final controller,
  final String hintText,
  final bool obscureText) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: yellow,
      decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: pink),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: yellow),
          ),
          hintText: hintText,
          hintStyle: greytxt),
    );
  }
