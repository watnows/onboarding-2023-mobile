//AppBarだよ
import 'package:flutter/material.dart';

class TwitterAppBar extends AppBar{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}