import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/constants.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_raised_button.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_textfield.dart';
import 'package:flutter_app_share_dating/widgetscustom/widget_data_preference.dart';
import 'package:flutter_app_share_dating/widgetscustom/widget_equipments.dart';


class CommunityCreateIdeas extends StatefulWidget {
  @override
  _CommunityCreateIdeasState createState() => _CommunityCreateIdeasState();
}
class _CommunityCreateIdeasState extends State<CommunityCreateIdeas> {
  bool _visibleRemove = false;
  bool _visibleBackroundImage = true;
  bool _visibleAdd = true;
  int equimentMore = 1;
  bool checkIconDataPrefrerence = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(size, context),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Create New Date Idea',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/ic_close.png',
          scale: 2,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Widget _buildBody(Size size, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Date Idea", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 15,),
                    CustomTextField(heightTF: 100,widthTF: size.width,radiusTF:10,hintTextTF:" What date idea you have in mind?",),
                    SizedBox(height: 15,),
                    _BodyBackgroundImage(context),
                    SizedBox(height: 15,),
                    WidgetsEquipmentsAndIcon(),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children:List.generate(equimentMore, (index) => EquipmentRowWidget(callback: (EquipmentObj equipmentObj){
                          debugPrint('EquipmentRowWidget: ${equipmentObj.toJson()}');
                        },))
                    ),
                    _buildWidgetsDataPrefrerenceAndIcon(),
                    SizedBox(height: 15,),
                    !checkIconDataPrefrerence ? SizedBox() :  WidgetRowDatePreference()
                  ],
                ),
              )),
          CustomRaisedButton(title: 'Save',
            heightButton: 50, withButton: size.width, radius: 20,
            onpressd: () {},),
          const SizedBox(height: bottom_margin_button,)
        ],
      ),
    );
  }


  Widget _BodyBackgroundImage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetBackgroundAndIcon(context),
        SizedBox(height: 15,),
        _visibleBackroundImage ? const SizedBox() : _buildWidgetImageAndIconX(),
      ],
    );
  }
  Widget WidgetBackgroundAndIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Background Image",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
        GestureDetector(child: _visibleBackroundImage ? Image.asset('assets/icons/ic_bkg_image.png', scale: 2,)
            : Text("Change background", style: TextStyle(color: Colors.orange, fontSize: 18),),
            onTap: (){ setState(() {
              if(_visibleBackroundImage) {
                _visibleBackroundImage = !_visibleBackroundImage;
              } else {
                _bottomSheet(context);
              }
            }); }),
      ],
    );
  }
  Widget _buildWidgetImageAndIconX() {
    return Container( width: 120, height: 200,
      child: Stack(
        children: [
          Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage('assets/images/couble4.jpg'), fit: BoxFit.cover))),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(child: Image.asset('assets/icons/ic_close_orange.png', scale: 2,),
                  onTap: () {setState(() {
                    _visibleBackroundImage = true;
                  });}
              ),
            ),
            right: 0,
          )
        ],
      ),
    );
  }

  Widget WidgetsEquipmentsAndIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Equipments ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
        Container(alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Icon Remove
                Container(height: 30, width: 30,
                    child: GestureDetector(
                      child: Visibility(visible: _visibleRemove,
                          child: Icon(Icons.remove_circle, color: Colors.orange)),
                      onTap: () {setState(() {
                        if (equimentMore > 2 && equimentMore <= 10) {_visibleRemove = true;_visibleAdd = true;equimentMore--;}
                        else if (equimentMore == 2) {equimentMore--;_visibleRemove = false;}
                      });
                      },
                    )),
                // Icon Add
                Padding( padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: GestureDetector(
                    child: Visibility(visible: _visibleAdd,
                        child: Icon(Icons.add_circle, color: Colors.orange)),
                    onTap: () {setState(() {if (equimentMore >= 1 && equimentMore < 9) {_visibleRemove = true;_visibleAdd = true;equimentMore++;}
                    else if (equimentMore == 9) {equimentMore++;_visibleAdd = false;}
                    });
                    },
                  ),
                ),
              ],
            )),

      ],
    );
  }
  Widget _buildWidgetsDataPrefrerenceAndIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Date Prefrerence ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
        GestureDetector(
            child: checkIconDataPrefrerence ? Image.asset('assets/icons/ic_arrow_up.png', scale: 2) : Image.asset('assets/icons/ic_arrow_down.png', scale: 2),
            onTap: (){
              setState(() {
                checkIconDataPrefrerence = !checkIconDataPrefrerence;
              }
              );
            })
      ],
    );
  }
  Widget _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext dialogBTS) {
          return Wrap(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  color: Colors.orange,
                  child: Text(
                    "Gọi sang Gallely lấy photo",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          );
        });
  }
}