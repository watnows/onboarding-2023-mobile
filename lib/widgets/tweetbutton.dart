import 'package:flutter/material.dart';

class TweetButton extends StatelessWidget {
  const TweetButton({Key? key, required this.func}) : super(key: key);
  final Function func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        func();
      },
      //ツイートボタンの装飾
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      //ツイートボタンの文字
      child:
          const Text('ツイートする', style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
