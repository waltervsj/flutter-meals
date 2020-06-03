import 'package:flutter/material.dart';
import 'package:meals/component/mealItem.dart';
import 'package:meals/data/dummyData.dart';
import 'package:meals/model/category.dart';

class CategoryMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              categoryMeals[index],
            );
          }),
    );
  }
}
