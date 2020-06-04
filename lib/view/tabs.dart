import 'package:flutter/material.dart';
import 'package:meals/view/categoryView.dart';
import 'package:meals/view/favoriteMeal.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedScreemIndex = 0;
  final List<Map<String, Object>> _screens = [
    {
      'title': 'All categories',
      'screen': CategoryView(),
    },
    {
      'title': 'Favorite meals',
      'screen': Favorite(),
    },
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_screens[_selectedScreemIndex]['title']),
      ),
      body: _screens[_selectedScreemIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreemIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
