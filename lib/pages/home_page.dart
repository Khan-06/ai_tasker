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

    // Writing
    CardCategoryProvider(
      headerText: 'Writing',
      onTap: () {},
      homeCards: [
        // Storytelling
        HomeCardProvider(
          headerIcon: 'assets/icons/storytelling.png',
          headerText: 'Storytelling',
          headerDescription: 'Create a story with a plot and characters',
          onTap: () {},
        ),

        // Song Lyrics
        HomeCardProvider(
          headerIcon: 'assets/icons/song.png',
          headerText: 'Song Lyrics',
          headerDescription: 'Write lyrics for your next song',
          onTap: () {},
        ),

        // Poem
        HomeCardProvider(
          headerIcon: 'assets/icons/poem.png',
          headerText: 'Poem',
          headerDescription: 'Write a poem on any topic',
          onTap: () {},
        ),

        // Paragraph
        HomeCardProvider(
          headerIcon: 'assets/icons/paragraph.png',
          headerText: 'Paragraph',
          headerDescription: 'Write a paragraph on any topic',
          onTap: () {},
        ),
      ],
    ),

    // Emails
    CardCategoryProvider(
      headerText: 'Emails',
      onTap: () {},
      homeCards: [
        // Email
        HomeCardProvider(
          headerIcon: 'assets/icons/email.png',
          headerText: 'Write Email',
          headerDescription: 'Write an email to your friend or colleague',
          onTap: () {},
        ),

        // Email Reply
        HomeCardProvider(
          headerIcon: 'assets/icons/email-reply.png',
          headerText: 'Reply Email',
          headerDescription: 'Reply to an email from your friend or colleague',
          onTap: () {},
        ),

        // Email Subject
        HomeCardProvider(
          headerIcon: 'assets/icons/email-subject.png',
          headerText: 'Email Subject',
          headerDescription: 'Create a subject line for your email',
          onTap: () {},
        ),
      ],
    ),

    // Business
    CardCategoryProvider(
      headerText: 'Business',
      onTap: () {},
      homeCards: [
        // Write Bio
        HomeCardProvider(
          headerIcon: 'assets/icons/bio.png',
          headerText: 'Write Bio',
          headerDescription: 'Write a bio for your social media profile',
          onTap: () {},
        ),

        // Business Name
        HomeCardProvider(
          headerIcon: 'assets/icons/business-name.png',
          headerText: 'Business Name',
          headerDescription: 'Create a name for your business',
          onTap: () {},
        ),

        // Company Tagline
        HomeCardProvider(
          headerIcon: 'assets/icons/company-tagline.png',
          headerText: 'Company Tagline',
          headerDescription: 'Create a tagline for your company',
          onTap: () {},
        ),

        // Product Tagline
        HomeCardProvider(
          headerIcon: 'assets/icons/product-tagline.png',
          headerText: 'Product Tagline',
          headerDescription: 'Create a tagline for your product',
          onTap: () {},
        ),

        // Job Post
        HomeCardProvider(
          headerIcon: 'assets/icons/job-post.png',
          headerText: 'Job Post',
          headerDescription: 'Create a job post for your company',
          onTap: () {},
        ),

        // Interview Guidance
        HomeCardProvider(
          headerIcon: 'assets/icons/interview-guidance.png',
          headerText: 'Interview',
          headerDescription: 'Prepare for your next job interview',
          onTap: () {},
        ),
      ],
    ),

    // Chef
    CardCategoryProvider(
      headerText: 'Chef',
      onTap: () {},
      homeCards: [
        // Write Recipe
        HomeCardProvider(
          headerIcon: 'assets/icons/recipe.png',
          headerText: 'Write Recipe',
          headerDescription: 'Write a recipe for your favorite dish',
          onTap: () {},
        ),

        // Diet Plan
        HomeCardProvider(
          headerIcon: 'assets/icons/diet-plan.png',
          headerText: 'Diet Plan',
          headerDescription: 'Create a diet plan for your health',
          onTap: () {},
        ),

        // Weight Gain
        HomeCardProvider(
          headerIcon: 'assets/icons/weight-gain.png',
          headerText: 'Weight Gain',
          headerDescription: 'Create a plan to gain weight',
          onTap: () {},
        ),
      ],
    ),

    // Fun & Entertainment
    CardCategoryProvider(
      headerText: 'Fun & Entertainment',
      onTap: () {},
      homeCards: [
        // Jokes
        HomeCardProvider(
          headerIcon: 'assets/icons/joke.png',
          headerText: 'Jokes',
          headerDescription: 'Read jokes and make your friends laugh',
          onTap: () {},
        ),

        // Movie Summary
        HomeCardProvider(
          headerIcon: 'assets/icons/movies-summary.png',
          headerText: 'Movie Summary',
          headerDescription: 'Write a summary of your favorite movie',
          onTap: () {},
        ),

        // Complete Sentence
        HomeCardProvider(
          headerIcon: 'assets/icons/complete-sentence.png',
          headerText: 'Completion',
          headerDescription: 'Complete the sentence with your own words',
          onTap: () {},
        ),

        // Dream Interpretation
        HomeCardProvider(
          headerIcon: 'assets/icons/dream-interpretation.png',
          headerText: 'Dreams',
          headerDescription: 'Interpret your dream and its meaning',
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
