import 'package:flutter/material.dart';
import 'package:flutter_practice33_hw4/config/colors.dart';
import 'package:flutter_practice33_hw4/config/texts.dart';

mixin Widgets {
  Widget daysMaker({required int day, bool hasPadding = false}) {
    String strDay;
    if (day == 1) {
      strDay = Texts.mon;
    } else if (day == 2) {
      strDay = Texts.tue;
    } else if (day == 3) {
      strDay = Texts.wed;
    } else if (day == 4) {
      strDay = Texts.thu;
    } else if (day == 5) {
      strDay = Texts.fri;
    } else if (day == 6) {
      strDay = Texts.sat;
    } else {
      strDay = Texts.sun;
    }
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          strDay,
          style: const TextStyle(
              fontSize: 16,
              color: ColorsClass.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
