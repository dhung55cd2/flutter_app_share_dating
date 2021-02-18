import 'package:flutter/material.dart';

class WidgetRowAvatar extends StatelessWidget {
  const WidgetRowAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.asset('assets/images/avatar_girl.png'),
            Text("Kim", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Icon(Icons.favorite, color: Colors.red,),
        ),
        Column(
          children: [
            Image.asset('assets/images/avatar_boy.png'),
            Text("David", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
}