import 'package:flutter/material.dart';
import 'package:meals_app_flutter/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = 'category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index) => Text(categoryMeals[index].title),
        ),
      ),
    );
  }
}
