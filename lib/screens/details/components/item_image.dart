import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imageSrc;
  const ItemImage({
    Key key,
    this.imageSrc,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imageSrc,
      fit: BoxFit.fill,
      height: size.height * .30,
      width: double.infinity,
    );
  }
}
