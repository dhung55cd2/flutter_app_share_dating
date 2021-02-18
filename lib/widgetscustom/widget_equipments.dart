import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_textfield.dart';

class EquipmentRowWidget extends StatefulWidget {
  final Function(EquipmentObj equipmentObj) callback;
  EquipmentRowWidget({ Key key, this.callback}) : super(key: key);
  @override
  _EquipmentRowWidgetState createState() => _EquipmentRowWidgetState();
}

class _EquipmentRowWidgetState extends State<EquipmentRowWidget> {
  var equipmentObj = EquipmentObj();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(heightTF: 35,widthTF: 120,radiusTF: 10,hintTextTF: 'Equipments',sizehintTextTF: 14,
                  onChanged: (String newText, bool onChanged){
                    equipmentObj.equipments = newText;
                    if(widget.callback != null) {
                      widget.callback(equipmentObj);
                    }
                  }
              ),
              SizedBox(width: 12,),
              CustomTextField(heightTF: 35,widthTF: 120,radiusTF: 10,hintTextTF: 'URL',sizehintTextTF: 14,
                onChanged: (String newText, bool onChanged){
                  equipmentObj.url = newText;
                  if(widget.callback != null){
                    widget.callback(equipmentObj);
                  }
                },
              ),
            ],
          ),
          InkWell(
              onTap: (){
                if(widget.callback != null){
                  widget.callback(equipmentObj);
                }
              },
              child: Image.asset('assets/icons/ic_bkg_image.png', scale: 2))
        ],
      ),
    );
  }
}




class EquipmentObj {
  String equipments;
  String url;
  String imagePath;
  EquipmentObj({this.equipments, this.url, this.imagePath});

  toJson() {
    return {
      "equipments": equipments,
      "url": url,
      "imagePath": imagePath,
    };
  }
}