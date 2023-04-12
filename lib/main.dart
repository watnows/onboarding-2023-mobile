import 'package:flutter/material.dart';
import 'package:watnow2023_demo_twitter/widgets/appbar.dart';
import 'package:watnow2023_demo_twitter/widgets/body.dart';
import 'package:watnow2023_demo_twitter/widgets/bottomnavigation.dart';
import 'package:watnow2023_demo_twitter/widgets/bottomsheet.dart';
import 'package:watnow2023_demo_twitter/widgets/tweetbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watnow2023 Demo Twitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TwitterAppBar(),
      bottomNavigationBar: const TwitterBottomNavigationSheet(),
      body: SingleChildScrollView(child: const TwitterBody()),
      // floatingActionButton: TweetButton(func: (){
      //   showModalBottomSheet(context: context, builder: (context) => const TweetBottomSheet());
      // })
    );
  }
}
