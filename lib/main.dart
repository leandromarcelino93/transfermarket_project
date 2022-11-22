import 'package:flutter/material.dart';
import 'package:transfermarket/data/inherited_proposals.dart';
import 'package:transfermarket/screens/initialscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: ProposalsInherited(child: const InitialScreen()),
    );
  }
}





















