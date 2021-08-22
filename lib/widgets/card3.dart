import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Ali Maher';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
