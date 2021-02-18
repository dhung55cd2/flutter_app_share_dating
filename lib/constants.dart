import 'package:flutter/material.dart';
const String ON_BACK = 'ON_BACK';
const double FORM_ELEMENT_HEIGHT = 48.0;
mixin ToColorAlias {}

class c = Color with ToColorAlias;
const lamColor = Color(0xff8bd4e4);
const greenColor = Color(0xff9EFFA8);
const yellow = Color(0xfffaa646);
const orange = Color(0xffFC7700);
const yellowText = Color(0xffffe454);
const yellowLight = Color(0xffEDC286);
const pageBackgroundColor = Colors.white;
const darkTextColor = Color(0xFF616770);
const textColor = Color(0xFF333333);
const lightTextColor = Color(0xFFA1AFC3);
const highlightTextColor = Color(0xFF7C42FF);
const errorColor = Color(0xFFD70D5A);
const redText = Color(0xffBC3535);
const successColor = Color(0xFF00CC96);
const lightColor = Color(0xFFE0E0E1);
const lighterColor = Color(0xFFFBFAFF);
const darkColor = Color(0xFF3F3A58);
const darkerColor = Color(0xFF0B0914);
const alPhaDarkColor = Color(0x77000000);
const Color myBlueColor = const Color(0xff0079bf);
const double size_icon_tu_vi = 70;
const double pading_tuvi_horiz = 25;
const  focusColor = Color(0xffA16215);
const  unFocusColor = Color(0xff9a9a99);
const backgroundDark = Color(0xff303966);
mixin ToTextStyleAlias {}

class t = TextStyle with ToTextStyleAlias;

const titleStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: darkTextColor);
const titleStyleBlue = TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: highlightTextColor);

const subTitleStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black38);
const subTitleStyleDark = TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: darkTextColor);
const subTitleStyleLight = TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black87);
const buttonStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.white);
const buttonStyleDark = TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: darkTextColor);
const buttonStyleBlue = TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: highlightTextColor);

const bodyStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: lightTextColor);
const bodyStyleDark = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: darkTextColor);
const bodyStyleBlue = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: darkTextColor);
const bodyStyleWhite = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

const bodyStyleBold = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white);
const bodyStyleDarkBold = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: darkTextColor);

const captionStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: lightTextColor);
const defaultBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [c(0xFFFFAF18), c(0xFFFC7700)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    )
);
var whiteBoxDecoration = BoxDecoration(
    borderRadius:  BorderRadius.circular(16),
    color: Colors.white
);
var lightDecoration = BoxDecoration(
  borderRadius:  BorderRadius.circular(4),
  color: const c(0xffF6F6F6),
);
const circleBoxDecoration  = BoxDecoration(
    boxShadow: [
      BoxShadow(color: Colors.black26,
          offset: Offset(10, 10),
          blurRadius: 40),
      BoxShadow( color: Colors.white,
        offset: Offset(-10, -10),
        blurRadius: 25,),
    ],
    shape: BoxShape.circle,
    color: Colors.white
);
// api
const double bottom_margin_button = 16;

// size chữ
const double size_text_title_page = 20;
const double size_text_title_item = 18;
const double size_text_item = 16;
const double size_hint_text = 16;
const double size_mini_hint_text = 14;
