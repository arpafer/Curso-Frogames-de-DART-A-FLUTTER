import 'package:disenios_app/component_container.dart';
import 'package:flutter/material.dart';

class ComponentScroll extends StatelessWidget {
  const ComponentScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
        ComponentContainer(),
      ]),
    );
  }
}
