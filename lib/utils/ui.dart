import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

void dismissKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(new FocusNode());
}

// width or height
// width
double myWidth(double width){
  return ScreenUtil().setWidth(width);
}
//height
double myHeight(double height){
  return ScreenUtil().setHeight(height);
}
// text size
double mySp(double textSize){
  return ScreenUtil().setSp(textSize);
}
