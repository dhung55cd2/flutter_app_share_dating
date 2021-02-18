import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_raised_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewUiBuildPage extends StatefulWidget {
  @override
  _ViewUiBuildPageState createState() => _ViewUiBuildPageState();
}

class _ViewUiBuildPageState extends State<ViewUiBuildPage> {
  TextEditingController editingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    editingController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui Date Spice build', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body:BodyUiPage(),
    );
  }

  Widget BodyUiPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            CustomRaisedButton(title: 'Community | Explose 1,2 (DONE)',radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/community_explore');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'Community | Create ideas (DONE)',radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/community_create_ideas');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'Community | Crop BG (DONE)',radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/community_crop_bg');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'Community Data | Review (DONE)',radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/community_data_review');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'Community | Date idea details (DONE)',radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/community_date_idea_detail');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'Community | Relation ship details (DONE)',radius: 12, onpressd: (){
              Navigator.pushNamed(context, '/community_relationship_details');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'Community | Story details (DONE)',radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/community_story_detail');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'On Date | Date spices Detail (DONE)', radius: 12,onpressd: (){
              Navigator.pushNamed(context, '/ondate_spices_detail');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'On Date | Use spice (DONE)',radius: 12, onpressd: (){
              Navigator.pushNamed(context, '/ondate_use_spice');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10),
            CustomRaisedButton(title: 'On Date | Can\'nt use any spice (DONE)',radius: 12, onpressd: (){
              creatDialog(context);
            },sizeTextTitle: 16,colorTextTitle: Colors.white,),
            const SizedBox(height: 10,),
            CustomRaisedButton(title: 'On Date | Photo Review_share (DONE)',radius: 12, onpressd: (){
              Navigator.pushNamed(context, '/ondate_photo_review_share');
            },sizeTextTitle: 16,colorTextTitle: Colors.white,)
          ],
        ),
      ),
    );
  }
  Future creatDialog( BuildContext context) async {
    editingController.clear();
    return showDialog( context: context, builder: (context){
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)), //this right here
        child: Container(
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
                  Navigator.of(context).pop();
                },
                    child: Text('Cancel', style: TextStyle(color: Colors.black, fontSize: 18.0),))
              ],
            ),
          ),
        ),
      );

    });
  }
}