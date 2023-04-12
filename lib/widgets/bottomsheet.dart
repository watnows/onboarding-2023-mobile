// ツイートボタンを選択した時に出てくるボトムシート
import 'package:flutter/material.dart';

class TweetBottomSheet extends StatelessWidget {
  const TweetBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text("Tweet"),
              const Spacer(),
              IconButton(
                icon: Icon(Icons.image),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.gif),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.bar_chart),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.poll),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.sentiment_satisfied_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.gif),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.bar_chart),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.poll),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
