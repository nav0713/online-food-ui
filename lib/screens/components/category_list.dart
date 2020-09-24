import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: "Combo Meal",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Chiken",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "Beverages",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "Snacks and side",
            isActive: false,
            press: () {},
          ),
        ],
      ),
    );
  }
}
