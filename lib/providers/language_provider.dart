import 'package:flutter/material.dart';

class Language {
  final String languageName;
  final String iconPath;
  bool isSelected;

  Language({required this.languageName, required this.iconPath, this.isSelected = false});
}