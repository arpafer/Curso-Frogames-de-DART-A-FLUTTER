import 'package:flutter/material.dart';

class ComponentColumn extends StatelessWidget {
  const ComponentColumn({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Deliver features fastered"),
        Text("Craft beatiful UIs"),
        FlutterLogo(size: 300)
      ],
    );
  }
  
}