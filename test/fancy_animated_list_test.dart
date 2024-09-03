// test/fancy_animated_list_test.dart
import 'package:fancy_animated_list/src/list_item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:fancy_animated_list/fancy_animated_list.dart';

void main() {
  testWidgets('FancyAnimatedList displays items', (WidgetTester tester) async {
    final items = [
      FancyListItem(
        title: 'Test Item 1',
        destinationPage: Container(),
      ),
      FancyListItem(
        title: 'Test Item 2',
        destinationPage: Container(),
      ),
    ];

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: FancyAnimatedList(items: items)),
    ));

    expect(find.text('Test Item 1'), findsOneWidget);
    expect(find.text('Test Item 2'), findsOneWidget);
  });

  testWidgets('Navigates to the correct page on tap',
      (WidgetTester tester) async {
    final items = [
      FancyListItem(
        title: 'Navigate Item',
        destinationPage: Scaffold(body: Center(child: Text('Detail Page'))),
      ),
    ];

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: FancyAnimatedList(items: items)),
    ));

    await tester.tap(find.text('Navigate Item'));
    await tester.pumpAndSettle();

    expect(find.text('Detail Page'), findsOneWidget);
  });
}
