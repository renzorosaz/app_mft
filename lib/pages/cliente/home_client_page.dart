import 'package:app_mft/pages/cliente/goals_page.dart';
import 'package:app_mft/pages/cliente/profile_page.dart';
import 'package:app_mft/pages/cliente/programs_page.dart';
import 'package:flutter/material.dart';

class HomeClientPage extends StatefulWidget {
  HomeClientPage({Key key}) : super(key: key);

  @override
  _HomeClientPageState createState() => _HomeClientPageState();
}

class _HomeClientPageState extends State<HomeClientPage> {
 /*  ScrollController _scrollController;
  double _containerMaxHeight = 56, _offset, _delta = 0, _oldOffset = 0; */

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

 /*  @override
  void initState() {
    super.initState();
    _offset = 0;
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          double offset = _scrollController.offset;
          _delta += (offset - _oldOffset);
          if (_delta > _containerMaxHeight)
            _delta = _containerMaxHeight;
          else if (_delta < 0) _delta = 0;
          _oldOffset = offset;
          _offset = -_delta;
        });
      });
  } */
  
/* bool _isVisible;
  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideBottomNavController = ScrollController();
    _hideBottomNavController.addListener(
      () {
        if (_hideBottomNavController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (_isVisible)
            setState(() {
              _isVisible = false;
            });
        }
        if (_hideBottomNavController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!_isVisible)
            setState(() {
              _isVisible = true;
            });
        }
      },
    );
  } */
  int _currentIndex = 0;
  final List<Widget> _children = [ProgramsPage(), ProfilePage(), GoalsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      /* body: Center(
        child: CustomScrollView(
          controller: _hideBottomNavController,
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => _getItem(context),
                  childCount: 20,
                ),
              ),
            ),
          ],
        ),
      ), */
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
    );
    /*  return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ListView.builder(
              physics: ClampingScrollPhysics(),
              controller: _scrollController,
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(title: Text(index.toString())),
            ),
            Positioned(
              bottom: _offset,
              width: constraints.maxWidth,
              child: Container(
                width: double.infinity,
                height: _containerMaxHeight,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildItem(Icons.home, "Programa"),
                    _buildItem(Icons.blur_circular, "Inicio"),
                    _buildItem(Icons.supervised_user_circle, "Objetivos"),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    ); */
  }
}

Widget _buildItem(IconData icon, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 28),
      Text(title, style: TextStyle(fontSize: 10)),
    ],
  );
}
