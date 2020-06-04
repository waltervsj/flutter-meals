import 'package:flutter/material.dart';
import 'package:meals/view/mealDetail.dart';
import 'view/categoryView.dart';
import 'view/categoryMeal.dart';
import 'util/appRoutes.dart';
import 'view/tabs.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Relaway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                fontSize: 22.5,
                color: Color.fromRGBO(240, 240, 240, 0.9),
              ),
              headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w400),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => Tabs(),
        AppRoutes.CATEGORY_MEAL: (ctx) => CategoryMeal(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetail(),
      },
    );
  }
}
