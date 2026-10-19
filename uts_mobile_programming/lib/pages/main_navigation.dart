import 'package:flutter/material.dart';

import 'beranda_page.dart';
import 'daftar_iot_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [BerandaPage(), DaftarIotPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF0EA5E9),
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFF0F172A),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices_other),
            label: 'Daftar IoT',
          ),
        ],
      ),
    );
  }
}
