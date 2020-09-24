import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Offers and Discounts",
          style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 166,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/beyond-meat-mcdonalds.png")),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                  Color(0XFFF961f).withOpacity(0.7),
                  kPrimaryColor.withOpacity(.7),
                ])),
            child: Row(
              children: [
                Expanded(
                  child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: "Get Discounts of \n",
                              style: TextStyle(fontSize: 18)),
                          TextSpan(
                              text: "30 % \n",
                              style: TextStyle(
                                  fontSize: 43, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "at McDonald`s on your first order and  instant cashback",
                              style: TextStyle(
                                fontSize: 10,
                              ))
                        ]),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
