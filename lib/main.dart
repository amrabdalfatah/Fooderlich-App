import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'modules/home.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  final theme = FooderlichTheme.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: const Home(),
    );
  }
}
