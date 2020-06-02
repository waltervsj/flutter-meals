import 'package:flutter/material.dart';
import 'package:meals/component/categoryItem.dart';
import 'package:meals/data/dummyData.dart';

class CategoryView extends StatelessWidget {
  const CategoryView.categoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Let\'s cook',
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category);
        }).toList(),
      ),
    );
  }
}
