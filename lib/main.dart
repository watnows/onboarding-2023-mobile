import 'package:flutter/material.dart';
import 'package:watnow2023_demo_twitter/widgets/appbar.dart';
import 'package:watnow2023_demo_twitter/widgets/body.dart';
import 'package:watnow2023_demo_twitter/widgets/bottomnavigation.dart';
import 'package:watnow2023_demo_twitter/widgets/tweetbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      body: const TwitterBody(),
      floatingActionButton: TwittetButton(func: null)
    );
  }
}
