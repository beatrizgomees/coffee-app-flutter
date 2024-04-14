import 'package:coffeeapp/components/button_categorie_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCategoriesComponent extends StatelessWidget {
  const ListCategoriesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          children: [
            ButtonCategorieComponent(title: "All"),
            SizedBox(width: 10),
            ButtonCategorieComponent(title: "Classic Coffee"),
            SizedBox(width: 10),
            ButtonCategorieComponent(title: "Capuccino"),
            SizedBox(width: 10),
            ButtonCategorieComponent(title: "Starbucks"),
            SizedBox(width: 10),
            ButtonCategorieComponent(title: "Latte"),
          ],
        ),
      ),
    );
  }
}
