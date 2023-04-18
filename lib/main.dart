import 'package:flutter/material.dart';
import 'package:watnow2023_demo_twitter/Tweetpage/body.dart';
import 'package:watnow2023_demo_twitter/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
  // debugPaintSizeEnabled=true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watnow2023 Demo Twitter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: TwitterAppBar(),
      appBar: AppBar(
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
      ),
      bottomNavigationBar: const TwitterBottomNavigationSheet(),
      body: const SingleChildScrollView(child: TwitterBody()),
      // floatingActionButton: TweetButton(func: (){
      //   showModalBottomSheet(context: context, builder: (context) => const TweetBottomSheet());
      // })
    );
  }
}
