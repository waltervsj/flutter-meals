import 'package:flutter/material.dart';
import 'package:meals/model/meal.dart';

class MealDetail extends StatelessWidget {
  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _createSectionList(Widget child) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[200],
          ),
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(meal.imageURL),
            Column(
              children: <Widget>[
                _createSectionTitle(context, 'Ingredients'),
                _createSectionList(
                  ListView.builder(
                    itemCount: meal.ingredients.length,
                    itemBuilder: (ctx, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(meal.ingredients[index]),
                        ),
                        color: Theme.of(context).accentColor,
                      );
                    },
                  ),
                ),
                _createSectionTitle(context, 'Steps'),
                _createSectionList(
                  ListView.builder(
                    itemCount: meal.steps.length,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              child: Text('${index + 1}'),
                            ),
                            title: Text(meal.steps[index]),
                          ),
                          Divider(),
                        ],
                      );
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(5))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
