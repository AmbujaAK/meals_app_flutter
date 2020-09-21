import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meal.dart';
import 'package:meals_app_flutter/screens/category_screen.dart';
import 'package:meals_app_flutter/screens/favourites_screent.dart';
import 'package:meals_app_flutter/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;

  TabsScreen(this.favouriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedpageindex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategoryScreen(), 'title': 'Category'},
      {
        'page': FavouritesScreen(widget.favouriteMeals),
        'title': 'Your Favourite'
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedpageindex]['title'])),
      drawer: MainDrawer(),
      body: _pages[_selectedpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedpageindex,
        type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favourites',
          )
        ],
      ),
    );
  }
}
