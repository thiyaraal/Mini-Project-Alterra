import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:mini_project_resepkita/screen/myresep.dart';
import 'package:mini_project_resepkita/screen/thiyarastrees.dart';

class BottomNavBarComponent extends StatefulWidget {
  const BottomNavBarComponent({Key? key}) : super(key: key);

  @override
  State<BottomNavBarComponent> createState() => _BottomNavBarComponentState();
}

class _BottomNavBarComponentState extends State<BottomNavBarComponent> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    //page 1
    HomePageResepNusantara(),
    //page 2
    ListResepSaya()
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
        backgroundColor: fromCssColor('#939A79'),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
   
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: 'Profile')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
