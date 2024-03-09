import 'package:disenios_app/component_column.dart';
import 'package:disenios_app/component_container.dart';
import 'package:disenios_app/component_padding.dart';
import 'package:disenios_app/component_row.dart';
import 'package:disenios_app/component_scroll.dart';
import 'package:disenios_app/proportional_distribution.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: SafeArea(child: ComponentScroll())
      ),
    );
  }
}
