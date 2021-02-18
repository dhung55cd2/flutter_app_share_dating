import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/widgetscustom/item_community_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class CommunityExplosePage extends StatefulWidget {
  @override
  _CommunityExplosePageState createState() => _CommunityExplosePageState();
}
class _CommunityExplosePageState extends State<CommunityExplosePage> {
  int indexButtonTab = 0;
  Color colorBorder0 = Colors.orange;
  Color colorBorder1 = Colors.black26;
  Color colorBorder2 = Colors.black26;
  Color colorBorder3 = Colors.black26;
  Color colorBorder4 = Colors.black26;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.orange,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: createTabBar(),
                ),
              ),
            ),
            title:  Text('Comminuty', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TabBarView(
            children: [
              BuildTabBarView(),
              BuildTabBarView(),
              BuildTabBarView(),
              BuildTabBarView(),
              BuildTabBarView(),
            ],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.orange,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget BuildTabBarView() {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      color: Colors.white,
      height: double.maxFinite,
      width: double.maxFinite,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: communities.length,
        itemBuilder: (BuildContext context, int index) => ItemCommunityWidget(communities[index]),
        staggeredTileBuilder: (int index) => new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 10, crossAxisSpacing: 10,),


    );
  }

  TabBar createTabBar()  {
    return TabBar(
        isScrollable: true,
        indicatorWeight: 2.0,
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.black26,
        labelPadding: EdgeInsets.symmetric(horizontal: 5),
        indicator: BoxDecoration(color: Colors.white),
        tabs: [
          CustomTabButton(heighttabbutton: 30,withtabbutton: 85,namteTab: "Community",colorBorder: indexButtonTab ==0 ? Colors.orange : Colors.black26,),
          CustomTabButton(heighttabbutton: 30,withtabbutton: 75,namteTab: "Following ",colorBorder: indexButtonTab ==1 ? Colors.orange : Colors.black26,),
          CustomTabButton(heighttabbutton: 30,withtabbutton: 40,namteTab: "You",colorBorder: indexButtonTab ==2 ? Colors.orange : Colors.black26,),
          CustomTabButton(heighttabbutton: 30,withtabbutton: 65,namteTab: "Romantic ",colorBorder: indexButtonTab ==3 ? Colors.orange : Colors.black26,),
          CustomTabButton(heighttabbutton: 30,withtabbutton: 45,namteTab: "Life ",colorBorder: indexButtonTab ==4 ? Colors.orange : Colors.black26,),
        ],
        onTap: (index) {
          setState(() {
            indexButtonTab = index;
          });
        }
    );
  }
}
class CustomTabButton extends StatelessWidget {
  final double heighttabbutton;
  final double withtabbutton;
  final String namteTab;
  final Color colorBorder;
  const CustomTabButton({
    Key key,
    this.heighttabbutton, this.withtabbutton, this.namteTab,this.colorBorder
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: heighttabbutton,
        width: withtabbutton,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(
            color: this.colorBorder, width: 2
        )),
        child: Center(child: Text(namteTab, style: TextStyle(color: colorBorder, fontSize: 13),)));
  }
}
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
class Community {
  String assets;
  String title;
  bool isVideo; // video or photo
  bool isLike;
  Community({ this.assets, this.title, this.isVideo = false, this.isLike= false});
}