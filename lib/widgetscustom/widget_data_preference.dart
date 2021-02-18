import 'package:flutter/material.dart';

import '../constants.dart';

class WidgetRowDatePreference extends StatelessWidget {
  const WidgetRowDatePreference({
    Key key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Column(
        children: [
          RowDatePreference(starText: "Distance", endText: "At home",),
          SizedBox(height: 15,),
          RowDatePreference(starText: "Budget", endText: "\$25-40",),
          SizedBox(height: 15,),
          RowDatePreference(starText: "Duration", endText: "1-2 hours",),
          SizedBox(height: 15,),
          RowDatePreference(starText: "Activity level", endText: "Active",),
        ],
      ),
    );
  }
}


class RowDatePreference extends StatefulWidget {
  RowDatePreference( {
    Key key, this.starText,this.endText}) : super(key: key);
  final String starText;
  final String endText;
  _RowDatePreferenceState createState() => _RowDatePreferenceState();
}

class _RowDatePreferenceState extends State<RowDatePreference> {
  static double _lowerValue = 0;
  static double _upperValue = 100;
  RangeValues values = RangeValues(_lowerValue, _upperValue);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.starText, style: TextStyle(color: Colors.black, fontSize: size_hint_text, fontWeight: FontWeight.bold),),
            Text(widget.endText, style: TextStyle(color: Colors.black, fontSize: size_mini_hint_text),),
          ],
        ),
        RangeSlider(
          // set màu cho phần line giữa 2 hình tròn
            activeColor: Colors.orange,
            // set màu cho phần line ngoài 2 hình tròn
            inactiveColor: Colors.black26,
            // chia phần line thành "n" đoạn
            divisions: 5,
            labels: RangeLabels(values.start.round().toString(), values.end.round().toString()),
            min: _lowerValue,
            max: _upperValue,
            values: values,
            onChanged: (val) {
              setState(() {
                values = val;
              });
            }
        )
      ],
    );
  }
}