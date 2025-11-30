import 'package:flutter/material.dart';
import 'screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mortgage Calculator',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const homeview(),
    );
  }
}
