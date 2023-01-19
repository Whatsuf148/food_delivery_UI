import 'package:cake_shop/Screen/homepage.dart';
import 'package:cake_shop/Screen/page1.dart';
import 'package:flutter/material.dart';

List<Widget> _pages = const [MainPage(), HomePage(), MainPage(), HomePage()];
int _selectedIndex = 0;

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffFE8C00),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: _selectedIndex,
        elevation: 0,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.assessment), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "home"),
        ],
      ),
    );
  }
}
