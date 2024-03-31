import 'package:flutter/material.dart';
import 'home_card_provider.dart';

class CardCategoryProvider {
  final String headerText;
  final VoidCallback onTap;
  final List<HomeCardProvider> homeCards;

  CardCategoryProvider({
    required this.headerText,
    required this.onTap,
    required this.homeCards,
  });
}
