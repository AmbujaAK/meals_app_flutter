import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Meals',
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Meals'),
      ),
      body: Center(child: Text('Navigation Time!'),),
    );
  }
}
