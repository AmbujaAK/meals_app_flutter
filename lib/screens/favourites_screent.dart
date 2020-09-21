import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meal.dart';
import 'package:meals_app_flutter/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some'),
      );
    } else {
      return ListView.builder(
        itemCount: favouriteMeals.length,
        itemBuilder: (context, index) => MealItem(
          id: favouriteMeals[index].id,
          title: favouriteMeals[index].title,
          imageUrl: favouriteMeals[index].imageUrl,
          duration: favouriteMeals[index].duration,
          complexity: favouriteMeals[index].complexity,
          affordability: favouriteMeals[index].affordability,
        ),
      );
    }
  }
}
