import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/constants.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_raised_button.dart';

class CommunityDataReview extends StatefulWidget {
  @override
  _CommunityDataReviewState createState() => _CommunityDataReviewState();
}
class _CommunityDataReviewState extends State<CommunityDataReview> {
  static Icon icon_keyboard_arrow = Icon(Icons.keyboard_arrow_up);
  static double hightImageShoes = 0;
  static bool checkClickIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: StackWidgetBodyPage(context),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomRaisedButton(title: 'Post',
              // backgroundColor: Colors.orangeAccent,
              heightButton: 50,withButton:double.infinity,radius: 20,onpressd: (){},),
          ),

          const SizedBox(height: bottom_margin_button,)
        ],
      ),
      // Equipment and icon keyboard_arrow_up
    );
  }

  Widget StackWidgetBodyPage(BuildContext context) {
    return Stack(
      children: [
        // Ảnh và Icon back
        WidgetStackImageAndIconBack(),
        // Phần làm mờ màu
        WidgetLinearGradient(context),
        Positioned(
          bottom: 0, left: 0, right: 0,
          child: WidgetNoteEquipments(),
        ),
      ],
    );
  }
  Widget WidgetStackImageAndIconBack() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/couble4.jpg',
          width: double.maxFinite,
        ),
        Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/icons/ic_back_circle.png'),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
            )),

      ],
    );
  }
  Widget WidgetLinearGradient(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.01),
                  Colors.white,
                  Colors.white,
                  Colors.white
                ]
            )
        ),
      ),
    );
  }

  Widget WidgetNoteEquipments() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dòng text Go for...
          Text(noteEquipment,style: TextStyle(color: Colors.black, fontSize: 15),),
          const SizedBox(height: 10,),
          // Dòng Equipment và icon up or down
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Equipments",style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),),
              InkWell(child: checkClickIcon ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down),
                onTap: (){
                  setState(() {
                    checkClickIcon = !checkClickIcon;
                  });
                },)
            ],
          ),
          const SizedBox(height: 10,),
          // Dãy hình ảnh giày
          checkClickIcon ? GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:3,childAspectRatio: 1.2)
            , itemCount: equipments.length,
            itemBuilder: (context, index){
              return InkWell(
                onTap: () {},
                child: itemEquiments(equipments[index]),
              );
            },
            shrinkWrap: true,
          ) : const SizedBox()
        ],
      ),
    );
  }


  static Widget itemEquiments ( Equipment equipment){
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/icons/ic_shoe.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(equipment.name, style:  TextStyle(color: Colors.black, fontSize: 11),),
                const SizedBox(width: 4,),
                equipment.upload ? Image.asset('assets/icons/ic_upload.png', scale: 2,) : const SizedBox()
              ],

            ),
          ),

        ],

      ),
    );
  }
}
var equipments = [
  Equipment(name: 'Walking shoes', upload: true, assets: 'couble3.jpg'),
  Equipment(name: 'Snacks shoes', upload: true, assets: 'couble3.jpg'),
  Equipment(name: 'Pilows shoes', assets: 'couble3.jpg'),
  Equipment(name: 'Blanket shoes', assets: 'couble3.jpg'),
];
class Equipment {
  String name;
  bool upload;
  String assets;
  Equipment({this.name, this.upload = false, this.assets});
}
var noteEquipment = "Go for a walk while holding hands.\nWhen you get home bake "
    "a delicious snack toghether.\nGo for a walk while holding hands.";