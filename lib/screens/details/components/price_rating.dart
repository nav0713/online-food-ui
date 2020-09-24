import 'package:flutter/material.dart';
import 'package:food_order_ui/screens/details/components/price_clipper.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constant.dart';

class PriceRating extends StatelessWidget {
  final int price, numberOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;

  const PriceRating({
    Key key,
    this.price,
    this.numberOfReviews,
    this.rating,
    this.name,
    this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SmoothStarRating(
                    onRated: onRatingChanged,
                    borderColor: kPrimaryColor,
                    rating: rating,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("$numberOfReviews reviews ")
                ],
              ),
            ],
          ),
          ClipPath(
            clipper: PriceClipper(),
            child: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 66,
              width: 65,
              color: kPrimaryColor,
              child: Text("\$$price",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
