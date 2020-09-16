import 'package:app_mft/pages/cliente/goals_page.dart';
import 'package:app_mft/pages/cliente/profile_page.dart';
import 'package:app_mft/pages/cliente/programs_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeClientPage extends StatefulWidget {
  @override
  _HomeClientPageState createState() => _HomeClientPageState();
}

class _HomeClientPageState extends State<HomeClientPage> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 1;

  final List<Widget> _children = [ProgramsPage(), ProfilePage(), GoalsPage()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
          child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex:
              _currentIndex, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.insert_invitation),
              title: new Text('Programa'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Inicio'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.timeline), title: Text('Objetivos'))
          ],
        ),
      ),
    );
  }
}
