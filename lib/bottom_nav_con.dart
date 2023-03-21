import 'package:flutter/material.dart';
import 'package:untitled3/pages/add_screen.dart';
import 'package:untitled3/pages/ads_screen.dart';
import 'package:untitled3/pages/chat_screen.dart';
import 'package:untitled3/pages/home_screen.dart';
import 'package:untitled3/pages/profile_page.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final pages = [
    Home(),
    MyAds(),
    Add(),
    Chat(),
    Profile(),

  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (val){
          setState(() {
            _currentIndex = val;

          });
        },
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined),label: 'My Ads'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
      ),

      body: pages[_currentIndex],
    );
  }
}
