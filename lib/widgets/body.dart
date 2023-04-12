import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:watnow2023_demo_twitter/widgets/tweet.dart';

class TwitterBody extends StatefulWidget {
  const TwitterBody({super.key});
  @override
  _TwitterBodyState createState() => _TwitterBodyState();
}

class _TwitterBodyState extends State<TwitterBody> {
  String _todo = "";
  String inputText = "";
  //ツイートを格納するリスト
  List _tweetList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        TextField(
          onChanged: (text) {
            setState(() {
              inputText = text;
            });
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: '今どうしてる？',
          ),
        ),
        const Gap(30),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                //ツイートする時の関数だよ
                setState(() {
                  _todo = inputText;
                });
              },
              style: ElevatedButton.styleFrom(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              //文字だよ
              child: const Text('ツイートする'),
            ),
            const Gap(10),
          ],
        ),
        TweetBody(tweetText: _todo),
      ],
    );
  }
}
