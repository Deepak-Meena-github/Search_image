import 'package:flutter/material.dart';
import 'package:imagedetec/home.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image search',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 121, 94, 166)),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

