import 'package:flutter/material.dart';

import '../providers/card_category_provider.dart';
import '../widgets/home_card.dart';
import '../providers/home_card_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CardCategoryProvider> categories = [
    // Social
    CardCategoryProvider(
      headerText: 'Social',
      onTap: () {},
      homeCards: [
        HomeCardProvider(
          headerIcon: 'assets/icons/twitter.png',
          headerText: 'Twitter',
          headerDescription: 'Write tweet, or turn text into tweet',
          onTap: () {},
        ),
        HomeCardProvider(
          headerIcon: 'assets/icons/facebook.png',
          headerText: 'Facebook',
          headerDescription: 'Post on your timeline or create a story',
          onTap: () {},
        ),
        HomeCardProvider(
          headerIcon: 'assets/icons/instagram.png',
          headerText: 'Instagram',
          headerDescription: 'Share a photo or a video',
          onTap: () {},
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 25, top: 20),
        child: Column(
          children: [
            for (final category in categories)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Header Text / Title
                        Text(
                          category.headerText,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // View All Button
                        TextButton(
                          onPressed: category.onTap,
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey.withOpacity(0.8),
                          ),
                          child: const Text('View All'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 185,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.homeCards.length,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        constraints: const BoxConstraints(
                          maxWidth: 220,
                        ),
                        child: HomeCard(
                          headerIcon: category.homeCards[index].headerIcon,
                          headerText: category.homeCards[index].headerText,
                          headerDescription:
                              category.homeCards[index].headerDescription,
                          onTap: category.homeCards[index].onTap,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      );
}
