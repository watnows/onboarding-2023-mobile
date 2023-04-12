
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TweetBody extends StatelessWidget{
  TweetBody({Key? key, required this.tweetText}) : super(key: key);
  String tweetText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://pbs.twimg.com/profile_images/1350000000000000000/0_400x400.jpg"),
      ),
      title: const Text("Flutter"),
      subtitle: Text(tweetText),
      onTap: () {
      },
      trailing: IconButton(
        icon: const Icon(Icons.more_horiz),
        onPressed: () {
          (){};
        },
      ),
    
    );
}
}