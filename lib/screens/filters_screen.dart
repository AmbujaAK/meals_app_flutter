import 'package:flutter/material.dart';
import 'package:meals_app_flutter/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text('filter'),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
