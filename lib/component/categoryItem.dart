import 'package:flutter/material.dart';
import 'package:meals/model/category.dart';
import 'package:meals/util/appRoutes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context, Category category) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) => CategoryMeal(
    //       category: category,
    //     ),
    //   ),
    // );

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORY_MEAL,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context, category),
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
