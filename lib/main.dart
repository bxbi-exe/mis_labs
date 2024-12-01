import 'package:flutter/material.dart';
import 'package:mis_labs/screens/home.dart';
import 'package:mis_labs/screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/details': (context) => const Details(),
      },
    );
  }
}
