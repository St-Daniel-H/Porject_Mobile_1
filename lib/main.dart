
import 'package:flutter/material.dart';
import 'Puzzle2x2.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puzzle Game',
      home: Puzzle2x2(),
    );
  }
}