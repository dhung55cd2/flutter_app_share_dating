import 'package:flutter/material.dart';

class BodyDiaLog extends StatefulWidget {
  @override
  _BodyDiaLogState createState() => _BodyDiaLogState();
}

class _BodyDiaLogState extends State<BodyDiaLog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 300.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text("Can't use any of our spices?",
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text("Do you have any recommendations?",
                style: TextStyle(color: Colors.black, fontSize: 15),),
            ),
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.black12, fontSize: 18),
                  decoration: InputDecoration.collapsed(hintText: " Tell us more....",hintStyle: TextStyle(color: Colors.black12)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(onPressed: (){},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.orange,
                  child: Text("Save", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                ),
              ),
            ),
            FlatButton(onPressed: (){
            },
                child: Text('Cancel', style: TextStyle(color: Colors.black, fontSize: 18.0),))
          ],
        ),
      ),
    );
  }
}
