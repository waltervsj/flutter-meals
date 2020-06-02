import 'package:flutter/material.dart';
import 'package:meals/model/category.dart';

class CategoryMeal extends StatelessWidget {
  final Category category;
  const CategoryMeal({
    @required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(category.title),
      ),
    );
  }
}
