// ツイートボタンを選択した時に出てくるボトムシート
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TweetBottomSheet extends StatelessWidget {
  const TweetBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text("Tweet"),
              const Spacer(),
              const TextButton(
                onPressed: null,
                child: Text('下書き'),
              ),
              const Gap(4),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
              },
                child: const Text('ツイートする'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const Gap(10)
            ],
          ),
          const Divider(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              IconButton(
                icon: Icon(Icons.sentiment_satisfied_alt_outlined),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.gif),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.bar_chart),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.poll),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: null,
              ),
            ],
          ),
          const Divider(),
          const TextField()
        ],
      ),
    );
  }
}
