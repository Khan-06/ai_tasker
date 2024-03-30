import 'package:flutter/material.dart';

class HomeCardProvider {
  final String headerIcon;
  final String headerText;
  final String headerDescription;
  final VoidCallback onTap;

  HomeCardProvider({
    required this.headerIcon,
    required this.headerText,
    required this.headerDescription,
    required this.onTap,
  });
}
