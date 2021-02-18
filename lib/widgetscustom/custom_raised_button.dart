import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final String title;
  final VoidCallback onpressd;
  final double heightButton;
  final double withButton;
  final double sizeTextTitle;
  final Color colorTextTitle;
  final double radius;
  CustomRaisedButton({Key key,
    this.heightButton = 48,
    this.withButton = double.maxFinite,
    this.title,
    this.radius,
    this.onpressd,
    this.sizeTextTitle,
    this.colorTextTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightButton, width: withButton,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(radius),
            color: onpressd == null ? Color(0xFFEFF0F5) : null,
            gradient: onpressd == null ? null : LinearGradient(
              colors: [
                Color(0xFFFFAF18),
                Color(0xFFFC7700)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),
        child:MaterialButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.zero,
          child:  Text(title, style: TextStyle( color: colorTextTitle, fontSize: sizeTextTitle), ),
          onPressed: onpressd,
        )
    );
  }
}

// RaisedButton(
// onPressed: onpressd,
// child: Text(title, style: TextStyle(fontSize: sizeTextTitle,color: colorTextTitle),), ),