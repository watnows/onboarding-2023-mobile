import 'package:flutter/material.dart';

class TwitterBody extends StatefulWidget {
  const TwitterBody({super.key});
  @override
  _TwitterBodyState createState() => _TwitterBodyState();
}

class _TwitterBodyState extends State<TwitterBody> {
  String _todo = "";
  String inputText = "";
  @override
  Widget build(BuildContext context) {
    return Column(
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
