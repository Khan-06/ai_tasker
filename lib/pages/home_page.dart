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
        // Twitter
        HomeCardProvider(
          headerIcon: 'assets/icons/twitter.png',
          headerText: 'Twitter',
          headerDescription: 'Write tweet, or turn text into tweet',
          onTap: () {},
        ),

        // LinkedIn
        HomeCardProvider(
          headerIcon: 'assets/icons/linkedin.png',
          headerText: 'LinkedIn',
          headerDescription: 'Post, to elevate you professional presence',
          onTap: () {},
        ),

        // Instagram
        HomeCardProvider(
          headerIcon: 'assets/icons/instagram.png',
          headerText: 'Instagram',
          headerDescription: 'Write captions for Instagram posts',
          onTap: () {},
        ),

        // TikTok
        HomeCardProvider(
          headerIcon: 'assets/icons/tiktok.png',
          headerText: 'TikTok',
          headerDescription: 'Create captions that speak to your audience',
          onTap: () {},
        ),

        // Multimedia
        HomeCardProvider(
          headerIcon: 'assets/icons/multimedia.png',
          headerText: 'Video Ideas',
          headerDescription: 'Create new video ideas for your channel',
          onTap: () {},
        ),

        // YouTube
        HomeCardProvider(
          headerIcon: 'assets/icons/youtube.png',
          headerText: 'YouTube',
          headerDescription: 'Create video titles and descriptions',
          onTap: () {},
        ),

        // Facebook
        HomeCardProvider(
          headerIcon: 'assets/icons/facebook.png',
          headerText: 'Facebook',
          headerDescription: 'Post on your timeline or create a story',
          onTap: () {},
        ),
      ],
    ),

    // Personal
    CardCategoryProvider(
      headerText: 'Personal',
      onTap: () {},
      homeCards: [
        // Birthday
        HomeCardProvider(
          headerIcon: 'assets/icons/birthday-cake.png',
          headerText: 'Birthday',
          headerDescription: 'Write a birthday message for a friend',
          onTap: () {},
        ),

        // Conversation
        HomeCardProvider(
          headerIcon: 'assets/icons/talking.png',
          headerText: 'Conversation',
          headerDescription: 'Start a conversation with your AI friend',
          onTap: () {},
        ),

        // Invitation
        HomeCardProvider(
          headerIcon: 'assets/icons/wedding-invitation.png',
          headerText: 'Invitation',
          headerDescription: 'Create an invitation for your event',
          onTap: () {},
        ),

        // Speech
        HomeCardProvider(
          headerIcon: 'assets/icons/microphone.png',
          headerText: 'Speech',
          headerDescription: 'Write a speech for your event',
          onTap: () {},
        ),

        // Password Generator
        HomeCardProvider(
          headerIcon: 'assets/icons/reset-password.png',
          headerText: 'Passwords',
          headerDescription: 'Generate a secure password',
          onTap: () {},
        ),

        // Synonyms
        HomeCardProvider(
          headerIcon: 'assets/icons/text-box.png',
          headerText: 'Synonyms',
          headerDescription: 'Learn new words and their synonyms',
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
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 10, right: 20),
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
                            fixedSize: const Size(100, 40),
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
