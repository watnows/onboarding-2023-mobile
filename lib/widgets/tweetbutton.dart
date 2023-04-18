// ツイートボタンです
import 'package:flutter/material.dart';

class TweetButton extends StatelessWidget {
  const TweetButton({Key? key, required this.func}) : super(key: key);
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed:null,
      tooltip: 'Tweet',
      child: Icon(Icons.add),
    );
  }
}
