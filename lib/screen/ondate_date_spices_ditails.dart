import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/screen/community_story_details.dart';

class OnDataSpicesDetails extends StatefulWidget {
  @override
  _OnDataSpicesDetailsState createState() => _OnDataSpicesDetailsState();
}
class _OnDataSpicesDetailsState extends State<OnDataSpicesDetails> {
  final controller = PageController(
      initialPage: 1
  );
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Image
              Expanded(
                child: PageView(
                    children: [1,2,3].map((e) => WidgetImageBackground(context)).toList()),
              ),
              // Icon Button Favorite và User
              Container(

                padding: EdgeInsets.only(top: 24, bottom: 48),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(iconUse()),
                    const SizedBox(width: 20,),
                    CustomIconButton(iconFavorite())
                  ],
                ),

              ),

            ],
          ),
          showClick()
        ],
      ),
    );
  }

  Container WidgetImageBackground(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 48),
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(24), color: Colors.white),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Align(alignment: Alignment.topRight,
                child: IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pop();})),
            const SizedBox(height: 10,),
            Image.asset('assets/images/spices.png', fit: BoxFit.contain,),
            const SizedBox(height: 24,),
            Text("Paint a cute animal on each\nother's hand", textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
          ]
      ),
    );
  }
  int index = 1;
  Widget userClick() {
    if( index == 1) {
      return  Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
            Image.asset('assets/images/user_guide_left.png', height: 80,),
            const SizedBox(width: 12,),
            Text('Swipe left to\nskip idea', style: TextStyle(color: Colors.white, fontSize: 16),)
          ],
        ),

      );
    }
    if( index == 2) {
      return  Center(
        child:   Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Text('Swipe right to\nuse idea', style: TextStyle(color: Colors.white, fontSize:16),),
            const SizedBox(width: 12,),
            Image.asset('assets/images/user_guide_right.png', height: 80,),
            SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
          ],
        ),
      );

    }
    if( index == 3) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 120),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Use idea', style: TextStyle(color: Colors.white, fontSize: 16),),
                const SizedBox(height: 40,),
                Image.asset('assets/images/user_guide_use.png', height: 40,),
                const SizedBox(height: 40),
              ],
            ),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
      );
    }
    if( index == 4) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Save idea', style: TextStyle(color: Colors.white, fontSize: 16),),
                const SizedBox(height: 40,),
                Image.asset('assets/images/user_guide_use.png', height: 40,),
                const SizedBox(height: 40,),
              ],
            ),
            SizedBox(width: 115),
          ],
        ),
      );
    }
  }
  Widget showClick() {
    return index >4 ? const SizedBox() : GestureDetector(
      onTap: (){
        setState(() {
          index++;
        });
      },
      child:  Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Color(0x77000000),
          child: userClick()),

    );
  }
  IconButton iconUse (){
    return IconButton(icon: Text("Use",
      style: TextStyle(color: Colors.green, fontSize: 20,
          fontWeight: FontWeight.bold),), onPressed: (){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityStoryDetails()));
      });
    });
  }
  IconButton iconFavorite (){
    return IconButton(icon: Icon(Icons.favorite, color: Colors.blueAccent,), onPressed: (){});
  }
  Widget CustomIconButton(Widget widGet) {
    return Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: Colors.white),
        child: widGet);
  }

}