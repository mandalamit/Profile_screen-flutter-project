import 'package:flutter/material.dart';
import 'main.dart';

class BotomNavBar extends StatefulWidget {
  @override
  _BotomNavBarState createState() => _BotomNavBarState();
}

class _BotomNavBarState extends State<BotomNavBar> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: Text('Home'),),
    Center(child: Text('Product'),),
    Center(child: Text('Test'),),
    Center(child: Text('Cart'),),
    MyProfile(),

  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color(0xff29cccc),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory),
          label: 'Product',
          backgroundColor: Color(0xff29cccc),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.science),
          label: 'Test',
          backgroundColor: Color(0xff29cccc),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart),
          label: 'Cart',
          backgroundColor: Color(0xff29cccc),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'User',
          backgroundColor: Color(0xff29cccc),
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
