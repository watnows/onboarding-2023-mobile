import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:watnow2023_demo_twitter/Tweetpage/widgets/tweet.dart';

class TwitterBody extends StatefulWidget {
  const TwitterBody({super.key});
  @override
  State<TwitterBody> createState() => _TwitterBodyState();
}

class _TwitterBodyState extends State<TwitterBody> {
  // 入力した文字を一時的に格納する変数
  final String _todo = "";
  // 入力した文字を格納する変数
  String inputText = "";
  //ツイートを格納する配列
  final List _tweetList = [];
//ここから画面を作るよ
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //余白
            const Padding(
              padding: EdgeInsets.all(8.0),
              //アイコン画像
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/watnow_twitter_icon.png'),
              ),
            ),
            const Gap(10),
            Expanded(
              //テキスト入力欄
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    inputText = text;
                  });
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'いまどうしてる？',
                ),
              ),
            ),
          ],
        ),
        const Gap(30),
        Row(
          children: [
            const Gap(76),
            const IconButton(onPressed: null, icon: Icon(Icons.image)),
            const IconButton(
                onPressed: null, icon: Icon(Icons.gif_box_outlined)),
            const IconButton(
                onPressed: null, icon: Icon(Icons.ballot_outlined)),
            const IconButton(onPressed: null, icon: Icon(Icons.schedule)),
            const IconButton(onPressed: null, icon: Icon(Icons.place_outlined)),
            //余白
            const Spacer(
              flex: 1,
            ),
            //ツイートボタン
            ElevatedButton(
              onPressed: () {
                if (inputText != "") {
                  //ツイートする時の関数だよ
                  // setState(() {
                  //   _todo = inputText;
                  // });
                  //ツイートする時の関数だよ
                  setState(() {
                    _tweetList.add(TweetBody(tweetText: inputText));
                  });
                }
              },
              //ツイートボタンの装飾
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              //ツイートボタンの文字
              child: const Text('ツイートする',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Gap(14),
          ],
        ),
        //ツイートの内容
        TweetBody(tweetText: _todo),
        //配列の中身があれば、それを表示する
        (_tweetList.isNotEmpty)
            ? ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _tweetList.length,
                itemBuilder: (context, index) {
                  return _tweetList[index];
                })
            : Container(height: 100),
      ],
    );
  }
}
