import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_raised_button.dart';

class OnDateUseSpice extends StatefulWidget {
  @override
  _OnDateUseSpiceState createState() => _OnDateUseSpiceState();
}
class _OnDateUseSpiceState extends State<OnDateUseSpice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset('assets/images/spice_success.png', fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Have fun creating\nmemories!",textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: CustomRaisedButton(title: "Done",
                // backgroundColor: Colors.orangeAccent,
                heightButton: 50,withButton: double.infinity,radius: 12,
                onpressd: (){Navigator.of(context).pop();},
                sizeTextTitle: 18,colorTextTitle: Colors.white,)
          ),

        ],
      ),

    );
  }
  void onBack() { Navigator.of(context).pop();}
}