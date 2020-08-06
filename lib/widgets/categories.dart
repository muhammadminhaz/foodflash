import 'package:flutter/material.dart';
import 'package:foodflash/model/category.dart';
import 'package:foodflash/widgets/title.dart';

import '../constants.dart';

List<Category> categoriesList = [
  Category(name: 'Salad', image: 'salad.png'),
  Category(name: 'Steak', image: 'steak.png'),
  Category(name: 'Fast food', image: 'sandwich.png'),
  Category(name: 'Deserts', image: 'ice-cream.png'),
  Category(name: 'Sea food', image: 'fish.png'),
  Category(name: 'Beer', image: 'pint.png'),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: red[200], offset: Offset(4, 6), blurRadius: 20)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                CustomText(text: categoriesList[index].name, size: 14, color: black,)
              ],
            ),
          );
        },
      ),
    );
  }
}
