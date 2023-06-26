import 'package:flutter/material.dart';
import '../appstyle/style.dart';

InkWell pinkButton(String text, void Function()? onTap) {
  return InkWell(
          child: Container(
            height: 40,
            width: 310,
            decoration: BoxDecoration(color: pink, borderRadius: BorderRadius.circular(100)),
            child: Center(child: Text(text, style:buttontxt)),
          ),
          onTap: onTap,
        );}