import 'package:flutter/material.dart';
import 'package:flutter_app_share_dating/screen/community_explose_1.2.dart';

Widget ItemCommunityWidget(Community community) {
  return Column(
    children: [
      Expanded(
          child: Stack(
            children: [
              const SizedBox(
                height: 4,
              ),
              Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/${community.assets}', width: double.maxFinite,fit: BoxFit.cover,),
                  )),
              !community.isVideo ? const SizedBox() : Center(
                child: Image.asset('assets/icons/ic_play_circle_filled.png', width: 300,),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  community.title,textAlign: TextAlign.left, overflow: TextOverflow.clip,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          )),
      const SizedBox(
        height: 4,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            width: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              community.isLike ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border, color: Colors.black54,),
              const SizedBox(width: 5,),
              Text("1.0k"),
            ],
          ),
          Spacer(),
          Text("...", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      )

    ],
  );
}