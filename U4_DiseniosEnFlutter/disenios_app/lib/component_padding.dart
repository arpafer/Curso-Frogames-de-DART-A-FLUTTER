import 'package:flutter/material.dart';

class ComponentPadding extends StatelessWidget {
  const ComponentPadding({super.key});

  @override
  Widget build(BuildContext context) {
     return const Card(      
       child: Padding(
        padding: EdgeInsets.only(left: 4, right: 8, top: 16, bottom: 32),
         child: Text("Hola flutter"))
     );
  }
  
}