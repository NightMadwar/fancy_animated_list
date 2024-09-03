// lib/src/animated_list.dart
import 'package:flutter/material.dart';
import 'list_item.dart';

class FancyAnimatedList extends StatelessWidget {
  final List<FancyListItem> items;
  final Duration animationDuration;

  FancyAnimatedList({
    required this.items,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _buildAnimatedItem(context, items[index], index);
      },
    );
  }

  Widget _buildAnimatedItem(
      BuildContext context, FancyListItem item, int index) {
    return AnimatedContainer(
      duration: animationDuration,
      curve: Curves.easeInOut,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: item.backgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          item.title,
          style: TextStyle(
            color: item.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item.destinationPage),
          );
        },
      ),
    );
  }
}
