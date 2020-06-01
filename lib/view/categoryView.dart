import 'package:flutter/material.dart';
import 'package:meals/component/categoryItem.dart';
import 'package:meals/data/dummyData.dart';

class CategoryView extends StatelessWidget {
  const CategoryView.categoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category);
        }).toList(),
      ),
    );
  }
}
