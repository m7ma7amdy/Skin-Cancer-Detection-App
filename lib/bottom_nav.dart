import 'package:flutter/material.dart';
import 'package:test/pages_chat/room.dart';
import 'package:test/patient/home.dart';
import 'package:test/services.dart';
import 'package:test/settings.dart';

import 'scan.dart';
class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const patientHome(),
  const services(),
  const scan(),
      roomUser(),   

  const settings(),
];

class _bottomNavState extends State<bottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Widgetpages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: const Color.fromRGBO(25, 153, 141, 1.0),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
            icon: Icon(Icons.home),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Camera',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Chats',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Calls',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Calls',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
