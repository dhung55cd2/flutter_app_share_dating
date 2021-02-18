import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/widgetscustom/custom_textfield.dart';

class OndateReviewShare extends StatefulWidget {
  @override
  _OndateReviewShareState createState() => _OndateReviewShareState();
}

class _OndateReviewShareState extends State<OndateReviewShare> {
  bool checkSharePhotoOrStory = true;
  Color colorRadioButton = Colors.orangeAccent;
  var valueTextField = "";
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Thanh Bar
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomAppBar(),
          ),
          // Image
          Expanded(
            child: Container(
              color: Colors.black12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RowAvatar,
                  ),
                  // Ảnh
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/couble4.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )

                  // Radio button
                ],
              ),
            ),
          ),
          // Share + TextField
          Container(
            height: 200,
            child: Column(
              children: [
                WidgetSharePhotoOrShareaStory(),
                checkSharePhotoOrStory ? const SizedBox() : WidgetTextField()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row CustomAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
          Navigator.of(context).pop();
            }),
        Text(
          "Review",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        FlatButton(
            onPressed: () {},
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ))
      ],
    );
  }

  Widget WidgetSharePhotoOrShareaStory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: 1,
          groupValue: id,
          activeColor: Colors.orange,
          onChanged: (val) {
            setState(() {
              checkSharePhotoOrStory = true;
              id = 1;
            });
          },
        ),
        Text(
          'Share photo',
          style: new TextStyle(fontSize: 17.0),
        ),
        const SizedBox(
          width: 20,
        ),
        Radio(
          value: 2,
          groupValue: id,
          activeColor: Colors.orange,
          onChanged: (val) {
            setState(() {
              checkSharePhotoOrStory = false;
              id = 2;
            });
          },
        ),
        Text(
          'Share a story',
          style: new TextStyle(fontSize: 17.0),
        ),
      ],
    );
  }

  Widget WidgetTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(heightTF: double.infinity,widthTF: double.infinity,radiusTF:10.0,hintTextTF: " What date idea you havee in mind?",)
        ),
      ),
    );
  }

  Widget RowAvatar = new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image.asset(
            'assets/images/avatar_girl.png',
            scale: 1.2,
          ),
          Text(
            "Kim",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      Column(
        children: [
          Image.asset(
            'assets/images/avatar_boy.png',
            scale: 1.2,
          ),
          Text(
            "David",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ],
  );
}