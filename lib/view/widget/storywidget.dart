
import 'package:flutter/material.dart';
import 'package:story_viewer/story_viewer.dart';

class StoryWidget extends StatelessWidget {
  String url;
  String username;
   StoryWidget({Key? key,required this.url,required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoryViewer(
      backgroundColor: Colors.black,
      ratio: StoryRatio.r4_3,
      stories: [
        StoryItemModel(imageProvider:NetworkImage(url))
      ],
      userModel: UserModel(username: username,profilePicture: NetworkImage(url)),
    );
  }
}
