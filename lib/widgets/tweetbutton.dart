// ツイートボタンです
import 'package:flutter/material.dart';

class TweetButton extends StatelessWidget {
  TweetButton({Key? key, required this.func}) : super(key: key);
  VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:null,
      tooltip: 'Tweet',
      child: Icon(Icons.add),
    );
  }
}
