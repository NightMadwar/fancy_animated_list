// example/lib/main.dart
import 'package:fancy_animated_list/src/list_item.dart';
import 'package:flutter/material.dart';
import 'package:fancy_animated_list/fancy_animated_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fancy Animated List Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<FancyListItem> items = [
    FancyListItem(
      title: 'Item 1',
      backgroundColor: Colors.red,
      textColor: Colors.white,
      destinationPage: DetailPage(title: 'Item 1 Detail'),
    ),
    FancyListItem(
      title: 'Item 2',
      backgroundColor: Colors.green,
      textColor: Colors.white,
      destinationPage: DetailPage(title: 'Item 2 Detail'),
    ),
    FancyListItem(
      title: 'Item 3',
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      destinationPage: DetailPage(title: 'Item 3 Detail'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fancy Animated List')),
      body: FancyAnimatedList(items: items),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: TextStyle(fontSize: 24))),
    );
  }
}
