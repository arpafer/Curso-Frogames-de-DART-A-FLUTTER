import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ComponentContainer extends StatelessWidget {
  const ComponentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.yellow,
      height: 200,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("Texto de ejemplo"),
        Text("Flutter")
      ]
      )
    );
  }
  
}