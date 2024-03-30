import 'package:flutter/material.dart';

import '../widgets/home_card.dart';
import '../providers/home_card_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<HomeCardProvider> homeCards = [
    // Twitter
    HomeCardProvider(
      headerIcon: 'assets/icons/twitter.png',
      headerText: 'Twitter',
      headerDescription: 'Write tween, or turn text into tweet',
      onTap: () {},
    ),

    // Facebook
    HomeCardProvider(
      headerIcon: 'assets/icons/facebook.png',
      headerText: 'Facebook',
      headerDescription: 'Post on your timeline or create a story',
      onTap: () {},
    ),

    // Instagram
    HomeCardProvider(
      headerIcon: 'assets/icons/instagram.png',
      headerText: 'Instagram',
      headerDescription: 'Share a photo or a video',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: 225,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeCards.length,
              itemBuilder: (context, index) => HomeCard(
                headerIcon: homeCards[index].headerIcon,
                headerText: homeCards[index].headerText,
                headerDescription: homeCards[index].headerDescription,
                onTap: homeCards[index].onTap,
              ),
            ),
          ),
        ],
      );
}
