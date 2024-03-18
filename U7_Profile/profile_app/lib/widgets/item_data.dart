import 'package:flutter/material.dart';

class ItemData extends StatelessWidget {
  const ItemData({super.key, required this.category, required this.value});

final String category;
final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(category),
        const SizedBox(
          height: 8
        ),
        Text(value)
      ],
    );
  }
  
}