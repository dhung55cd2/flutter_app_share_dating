import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_raised_button.dart';

class CommunityStoryDetails extends StatefulWidget {
  @override
  _CommunityStoryDetailsState createState() => _CommunityStoryDetailsState();
}
class _CommunityStoryDetailsState extends State<CommunityStoryDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // CustomAppBar
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios_rounded, size: 20,)),
                  Text("Story Detail", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,)
                ],
              ),),
            // Chèn ảnh + Text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    // Ảnh
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/couble4.jpg',
                        width: double.maxFinite,
                        height: MediaQuery.of(context).size.height * 0.8,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Làm mờ
                    Positioned(
                      bottom: 0,left: 0,right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height/2,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(0.01),
                                Colors.white,
                                Colors.white
                              ],
                            )
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date Idea', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                            const SizedBox(height: 8,),
                            Text('Go for a walk in a park', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),),
                            const SizedBox(height: 8,),
                            Text(noteDateIdea, style: TextStyle(color: Colors.black, fontSize: 16),),
                            const SizedBox(height: 12,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row Owned By
            const SizedBox(height: 10,),
            CustomBlurryBar(title: 'Owned by',),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RowAvatarUser,
                  CustomRaisedButton(title: 'Follow',
                    // backgroundColor: Colors.orangeAccent,
                    heightButton: 35,withButton: 100,radius: 20,onpressd:
                        (){},),
                ],
              ),
            ),
            const SizedBox(height: 15,),
          ],

        )
    );
  }
  static Widget RowAvatarUser = new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image.asset('assets/images/avatar_girl.png', scale: 1.2,),
          Text("Kim", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Icon(Icons.favorite, color: Colors.red,),
      ),
      Column(
        children: [
          Image.asset('assets/images/avatar_boy.png', scale: 1.2,),
          Text("David", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
        ],
      ),
    ],
  );

  void onBack() { Navigator.of(context).pop();}
  void clickFollow (){}
  var noteDateIdea = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sollicitudin risus. "
      "Aenean feugiat dui neque, in pulvinar mi lacinia in."
      "Integer placerat tempor erat, ac luctus nisi sollicitudin at. Cras rhoncus pretium felis, ne...";
  Widget RowAvatar = new   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image.asset('assets/avatar_girl.png'),
          Text("Kim", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Icon(Icons.favorite, color: Colors.red,),
      ),
      Column(
        children: [
          Image.asset('assets/avatar_boy.png'),
          Text("David", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
        ],
      ),
    ],
  );
}

class CustomBlurryBar extends StatelessWidget {
  final String title;
  const CustomBlurryBar({
    Key key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 100, child: Divider(color: Colors.black12, height: 1,)),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(title, style: TextStyle(color: Colors.black26, fontSize: 16),),
            ),
            Container(width: 100,child: Divider(color: Colors.black12, height: 1,)),
          ],
        ),
      ),
    );
  }
}