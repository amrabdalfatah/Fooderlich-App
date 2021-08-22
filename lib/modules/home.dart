import 'package:flutter/material.dart';
import 'package:fooderlich/widgets/card1.dart';
import 'package:fooderlich/widgets/card2.dart';
import 'package:fooderlich/widgets/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = [
    Card1(),
    Card2(),
    Card3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Card1',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
