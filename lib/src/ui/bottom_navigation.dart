import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFFFEA9F),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Trailers"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.yellow.shade700,
      onTap: _onTapItem,
    );
  }

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
