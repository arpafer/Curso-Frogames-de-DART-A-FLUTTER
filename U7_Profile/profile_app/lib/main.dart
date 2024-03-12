import 'package:flutter/material.dart';
import 'package:profile_app/screens/screens.dart';
import 'package:profile_app/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfffb8c04)),
        useMaterial3: true,
      ),
      initialRoute: homeScreen,
      routes: {
        homeScreen: (_) => const HomeScreen(),
        editScreen: (_) => const EditScreen()
      }
    );
  }
}


