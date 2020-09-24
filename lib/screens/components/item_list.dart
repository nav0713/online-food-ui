import 'package:flutter/material.dart';
import 'package:food_order_ui/screens/details/details_screen.dart';

import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            shopName: "McDonald`s",
            title: "Burgers and Beers",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          ItemCard(
            shopName: "Wendys",
            title: "Chinese Noodles",
            svgSrc: "assets/icons/chinese_noodles.svg",
            press: () {},
          ),
          ItemCard(
            shopName: "McDonald`s",
            title: "Burgers and Beers",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {},
          )
        ],
      ),
    );
  }
}
