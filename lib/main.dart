import 'package:flutter/material.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: Icon(Icons.home)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final Icon title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String inputText = "";
  String _todo = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: const TwitterBottomNavigationSheet(),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 30),
          const Text('今どうしてる？'),
          TextField(
            onChanged: (text) {
              setState(() {
                inputText = text;
              });
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _todo = inputText;
              });
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text('ツイートする'),
          ),
          ListTile(
            title: Text('$_todo'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _todo = "";
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButton: TwittetButton(func: null)
    );
  }
}
