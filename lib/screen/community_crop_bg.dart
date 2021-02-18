import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

List<String> images = [
  'assets/images/couble0.jpg', 'assets/images/couble2.jpg',
  'assets/images/couble3.jpg', 'assets/images/couble4.jpg',
  'assets/images/couble2.jpg', 'assets/images/couble0.jpg',
  'assets/images/couble3.jpg', 'assets/images/couble4.jpg',
];
class CommunityCropBg extends StatefulWidget {
  @override
  _CommunityCropBgState createState() => _CommunityCropBgState();
}

class _CommunityCropBgState extends State<CommunityCropBg> {
  String imageSelect = images[0];
  bool checkIconKeyboard_arrow = true;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        width: _size.width,
        height: _size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: RowItemButtonOnTop(),
            ),
            Expanded(child: Image.asset(imageSelect,width: double.maxFinite,height: double.maxFinite,fit: BoxFit.cover,),),
            GirdViewItemImages(_size),
          ],
        ),
      ),
    );
  }
  Widget RowItemButtonOnTop() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
          child: Text(" Cancel", style: TextStyle(color: Colors.white,fontSize: 16),), onPressed: (){
            Navigator.of(context).pop();
        },),
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(" Recent", style: TextStyle(color: Colors.white,fontSize: 16),),
              checkIconKeyboard_arrow ? Icon(Icons.keyboard_arrow_up, color: Colors.white,)
                  : Icon(Icons.keyboard_arrow_down, color: Colors.white,)
            ],
          ),
          onTap: (){
            setState(() {checkIconKeyboard_arrow = !checkIconKeyboard_arrow;});
          },
        ),
        FlatButton(child: Text(" Done", style: TextStyle(color: Colors.white,fontSize: 18),), onPressed: null,),
      ],
    );
  }
  Widget GirdViewItemImages(Size _size) {
    return Container(
      height: _size.height*0.25,
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,childAspectRatio: 1),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              setState(() {
                imageSelect = images[index];
              });
            },
            child: imageItem(images[index]),
          );
        },
        shrinkWrap: true,
      ),
    );
  }
  Widget imageItem(String linkImage) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(linkImage, fit: BoxFit.cover,),),
        Align(
            alignment: Alignment.bottomRight,
            child: imageSelect != linkImage ? const SizedBox() : Padding(padding: EdgeInsets.all(4),
              child: Image.asset('assets/icons/ic_check.png', width: 16,),)
        ),
      ],
    );
  }
}

