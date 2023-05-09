import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:mini_project_resepkita/screen/myresep.dart';
import 'package:mini_project_resepkita/screen/profilescreen.dart';
import 'package:mini_project_resepkita/screen/savescreen.dart';
import 'package:mini_project_resepkita/screen/thiyarastrees.dart';
import 'package:mini_project_resepkita/style/colorsstyle.dart';

class BottomVab extends StatefulWidget {
  const BottomVab({Key? key}) : super(key: key);

  @override
  State<BottomVab> createState() => _BottomVabState();
}

class _BottomVabState extends State<BottomVab> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    //page 1
    HomePageResepNusantara(),
    SaveScreen(),
    ListResepSaya(),
    Profile(),

    //page 2

    //page 4

    //page 3 testing
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
        backgroundColor: ColorStyle().primaryblack,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'tersimpan',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Resep'),
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
