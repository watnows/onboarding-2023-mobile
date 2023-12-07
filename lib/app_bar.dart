//未使用
import 'package:flutter/material.dart';

class TwitterAppBar extends AppBar{
  TwitterAppBar({super.key});
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottomOpacity: 0.4,
      elevation: 0.0,
      // 下に区切り線を引く
      title: Image.asset('assets/logo.png', width: 90, height: 90),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey,
          height: 1.0,
        ),
      ),
    );
  }
}