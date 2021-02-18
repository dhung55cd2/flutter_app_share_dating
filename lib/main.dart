import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_share_dating/screen/community_create_ideas.dart';
import 'package:flutter_app_share_dating/screen/community_crop_bg.dart';
import 'package:flutter_app_share_dating/screen/community_data_review.dart';
import 'package:flutter_app_share_dating/screen/community_date_idea_details.dart';
import 'package:flutter_app_share_dating/screen/community_explose_1.2.dart';
import 'package:flutter_app_share_dating/screen/community_relationship_details.dart';
import 'package:flutter_app_share_dating/screen/community_story_details.dart';
import 'package:flutter_app_share_dating/screen/ondate__use_spice.dart';
import 'package:flutter_app_share_dating/screen/ondate_date_spices_ditails.dart';
import 'package:flutter_app_share_dating/screen/ondate_photo_review_share.dart';
import 'package:flutter_app_share_dating/screen/view_ui_build_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Pass all uncaught errors from the framework to Crashlytics.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp(),
    );
  });
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => ViewUiBuildPage(), //SplashPage, TestPage
        '/community_explore': (_) => CommunityExplosePage(),
        '/community_create_ideas': (_) => CommunityCreateIdeas(),
        '/community_crop_bg': (_) => CommunityCropBg(),
        '/community_data_review': (_) => CommunityDataReview(),
        '/community_date_idea_detail': (_) => CommunityDataIdeaDetails(),
        '/community_relationship_details': (_) => CommunityRelationshipDetails(),
        '/community_story_detail': (_) => CommunityStoryDetails(),
        '/ondate_spices_detail': (_) => OnDataSpicesDetails(),
        '/ondate_use_spice': (_) => OnDateUseSpice(),
        '/ondate_photo_review_share': (_) => OndateReviewShare(),

      },
      debugShowCheckedModeBanner: false,
      title: 'Remake App Hao',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
