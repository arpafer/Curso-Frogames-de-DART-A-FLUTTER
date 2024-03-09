import 'package:flutter/material.dart';

class ComponentRow extends StatelessWidget {
  const ComponentRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Deliver features faster"),
        Text("Craft beautiful UIs"),
        FlutterLogo(size: 100)
       ],
    );
    
  }
  
}