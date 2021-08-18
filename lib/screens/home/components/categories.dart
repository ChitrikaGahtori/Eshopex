import 'package:e_shopex/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {

  List<Map<String, dynamic>> categories = [
    {"image": "assets/images/offers.png", "text": "Offer Zone"},
    {"image": "assets/images/Mobiles.png", "text": "Mobiles"},
    {"image": "assets/images/fashion.png", "text": "Fashion"},
    {"image": "assets/images/Electronics.png", "text": "Electronics"},
    {"image": "assets/images/Home.png", "text": "Home"},
    {"image": "assets/images/Beauty_products.png", "text": "Beauty"},
    {"image": "assets/images/Appliances.png", "text": "Appliances"},
    {"image": "assets/images/Toys_and_baby.png", "text": "Toys&Baby"},
    {"image": "assets/images/Sports.png", "text": "Sports"},
    {"image": "assets/images/Books_more.png", "text": "BooksMore"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15),
        // vertical: getProportionateScreenHeight(15),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
                (index) => CategoryCard(
              image: categories[index]["image"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.image,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(7)),
        child: SizedBox(
          width: getProportionateScreenWidth(75),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio : 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    // color: Colors.lightBlue.shade50,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(image),
                ),
              ),
              SizedBox(height: 5),
              Text(text,
                style:TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(13.2024),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




