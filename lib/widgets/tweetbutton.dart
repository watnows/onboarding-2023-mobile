import 'package:flutter/material.dart';

class TwittetButton extends StatelessWidget {
  TwittetButton({Key? key, required func}) : super(key: key);
  void func;
  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed: null,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
