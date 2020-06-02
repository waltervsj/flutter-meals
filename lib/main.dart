import 'package:flutter/material.dart';
import 'view/categoryView.dart';

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
      home: CategoryView.categoryView(),
    );
  }
}
