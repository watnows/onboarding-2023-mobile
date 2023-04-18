// ボトムナビゲーションバーを定義するファイル
import 'package:flutter/material.dart';
//ボトムナビゲーションバーの実装
class TwitterBottomNavigationSheet extends StatelessWidget {
  const TwitterBottomNavigationSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: ""),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
    );
  }
}
