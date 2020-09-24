import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_ui/screens/details/components/price_rating.dart';
import '../../../constant.dart';
import '../details_screen.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          ShopName(
            name: "McDonalds",
          ),
          PriceRating(
            name: "Cheesse Burger",
            rating: 4.0,
            numberOfReviews: 24,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            "is sied not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently .....",
            textAlign: TextAlign.justify,
            style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .70,
            height: 56.0,
            child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: kPrimaryColor,
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/bag.svg"),
                label: Text(
                  "Order Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
