// lib/src/list_item.dart
import 'package:flutter/material.dart';

class FancyListItem {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Widget destinationPage;

  FancyListItem({
    required this.title,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    required this.destinationPage,
  });
}
