// ツイートの内容
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TweetBody extends StatelessWidget {
  const TweetBody({Key? key, required this.tweetText}) : super(key: key);
  final String tweetText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(10),
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/watnow_twitter_icon.png'),
            ),
            const Gap(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('Watnow',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    const Gap(8),
                    const Text('@watnow',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        )),
                    const Gap(8),
                    const Text('2022/04/12',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        )),
                    IconButton(
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz))
                  ],
                ),
                const Gap(4),
                Text(tweetText,
                    style: const TextStyle(
                      fontSize: 16,
                    )),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.repeat),
                      iconSize: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        iconSize: 20),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Divider()
      ],
    );
  }
}
