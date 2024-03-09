import 'package:flutter/material.dart';

class ProportionalDistribution extends StatelessWidget {
  const ProportionalDistribution({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Container(color: Colors.red)),
        Expanded(
          flex: 3,
          child: Container(color: Colors.blue),
        )
      ],
    );
  }
}
