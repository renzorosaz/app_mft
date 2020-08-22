import 'package:app_mft/pages/cliente/goals_page.dart';
import 'package:app_mft/pages/cliente/profile_page.dart';
import 'package:app_mft/pages/cliente/programs_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
   int _currentIndex = 0;
 final List<Widget> _children = [
   ProgramsPage(),
   ProfilePage(),
   GoalsPage()
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _children[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,// this will be set when a new tab is tapped
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
              icon: Icon(Icons.timeline),
               title: Text('Objetivos'))
        ],
      ),
    );
  }
}