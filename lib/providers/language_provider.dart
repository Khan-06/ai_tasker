import 'package:flutter/material.dart';

class language {
  late final String languageName;
  late final String iconPath;
  late final bool isSelected;

  language(
      {required this.languageName,
      required this.iconPath,
      this.isSelected = false});
}
