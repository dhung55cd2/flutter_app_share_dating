import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/screen/community_explose_1.2.dart';
import 'package:flutter_app_share_dating/widgetscustom/item_community_widget.dart';
import 'package:flutter_app_share_dating/widgetscustom/widget_row_avatar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CommunityRelationshipDetails extends StatefulWidget {
  @override
  _CommunityRelationshipDetailsState createState() => _CommunityRelationshipDetailsState();
}

class _CommunityRelationshipDetailsState extends State<CommunityRelationshipDetails> {
  Color colorBorder0 = Colors.black;
  Color colorBorder1 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 250,
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,),
                        onTap: (){
                          onBack();
                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: WidgetRowAvatar(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ButtonPost,
                    ),
                    Container(
                      color: Colors.white,
                      height: 50,
                      child: Align(
                        alignment: Alignment.center,
                        child: createTabBar(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
            child: TabBarView(
              children: [
                Container(
                  height: 500,
                  width: 400,
                  child: _buildBodyTab()
                ),
                Container(
                  height: 500,
                  width: 400,
                  child: _buildBodyTab()
                ),

              ],),
          ),
        )
    );
  }
  TabBar createTabBar()  {
    return TabBar(
        isScrollable: true,
        indicatorWeight: 2.0,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        labelPadding: EdgeInsets.symmetric(horizontal: 5),
        indicator: BoxDecoration( color: Colors.white),
        tabs: [
          Container(
              height: 25,
              width: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: colorBorder0 ),
              child: Center(child: Text("Created", style: TextStyle( fontSize: 14),))),
          Container(
              height: 25,
              width: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: colorBorder1 ),
              child: Center(child: Text("Saved" ,style: TextStyle(fontSize: 14),))),

        ],
        onTap: (index) {
          this.onTapHandler(index);
        }
    );
  }
Widget _buildBodyTab(){
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: communities.length,
      itemBuilder: (BuildContext context, int index) => ItemCommunityWidget(communities[index]),
      staggeredTileBuilder: (int index) => new StaggeredTile.count(2, index.isEven ? 3 : 2),
      mainAxisSpacing: 10, crossAxisSpacing: 10,);
}
  Widget ButtonPost = new Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: _onClick,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Colors.orange,
      child: Text("Post",style: TextStyle(color: Colors.white),),
    ),
  );
  static void _onClick(){}
  void onTapHandler(int index)  {
    setState(()  {
      switch(index){
        case 0:
          colorBorder0 = Colors.black;
          colorBorder1 = Colors.white;
          break;
        case 1:
          colorBorder0 = Colors.white;
          colorBorder1 = Colors.black;
          break;
      }
    });
  }
  void onBack() { Navigator.of(context).pop();}
  var communities = [
    Community(title: 'Go sky diving or bungee jumping', assets: 'images/couble0.jpg'),
    Community(title: 'Join a fun looking meetup together', assets: 'images/couble2.jpg'),
    Community(title: 'Take a dance lesson', assets: 'images/couble4.jpg', isLike: true),
    Community(
        title: 'Use just a compass and a map to get to somepl...',
        assets: 'images/couble3.jpg'),
    Community(
        title: 'Try on ridiculous clothing/outfits you...',
        assets: 'images/couble4.jpg'),
    Community(
        title: 'Go to the nearest amusement park or wat...',
        assets: 'images/couble0.jpg',
        isVideo: true),
    Community(
        title: 'Backyard camping or just go camping', assets: 'images/couble2.jpg'),
    Community(
        title: 'Date Ideas Date Ideas\nDate Ideas Date Ideas...',
        assets: 'images/couble4.jpg',
        isVideo: true),
    Community(title: 'Go sky diving or bungee jumping', assets: 'images/couble0.jpg'),
    Community(title: 'Join a fun looking meetup together', assets: 'images/couble4.jpg'),
    Community(title: 'Take a dance lesson', assets: 'images/couble2.jpg', isLike: true),
    Community(
        title: 'Use just a compass and a map to get to somepl...',
        assets: 'images/couble3.jpg'),
    Community(
        title: 'Try on ridiculous clothing/outfits you...',
        assets: 'images/couble4.jpg'),
    Community(
        title: 'Go to the nearest amusement park or wat...',
        assets: 'images/couble0.jpg',
        isVideo: true),
    Community(
        title: 'Backyard camping or just go camping', assets: 'images/couble2.jpg'),
    Community(
        title: 'Date Ideas Date Ideas\nDate Ideas Date Ideas...',
        assets: 'images/couble4.jpg',
        isVideo: true),
  ];
}