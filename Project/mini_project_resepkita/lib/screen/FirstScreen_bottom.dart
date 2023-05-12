import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/screen/profilescreen.dart';
import 'package:mini_project_resepkita/screen/categoriscreen.dart';
import 'package:mini_project_resepkita/screen/homepagescreen.dart';
import 'package:mini_project_resepkita/style/colorsstyle.dart';

import 'resepscreen.dart';

class FirstScreenWithBottomNav extends StatefulWidget {
  const FirstScreenWithBottomNav({Key? key}) : super(key: key);

  @override
  State<FirstScreenWithBottomNav> createState() => _FirstScreenWithBottomNavState();
}

class _FirstScreenWithBottomNavState extends State<FirstScreenWithBottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    //page 1
    const HomePageResepNusantara(),
    CategoryScreen(),
    DaftarResepScreen(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorStyle().white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Kategori',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: 'Resep Kamu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: 'Profil')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorStyle().primarypink,
        onTap: _onItemTapped,
      ),
    );
  }
}
