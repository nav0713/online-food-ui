import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    elevation: 0,
    centerTitle: true,
    //rich text can create a single line of text with different textstyle
    /*
RichText uses TextSpan as a parent object that has its own style property along with a tex
t parameter which we can input the actual text. The parent object then can have a number of TextSpan 
objects as children who have their own style property that can be applied to respective text.
    */
    title: RichText(
      text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: "Punk", style: TextStyle(color: kSecondaryColor)),
            TextSpan(text: "Food", style: TextStyle(color: kPrimaryColor)),
          ]),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      )
    ],
  );
}
