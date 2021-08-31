import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/home/components/product_card.dart';
import 'package:e_shopex/screens/home/components/section_title.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_shopex/models/product.dart';

class Products extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(327),
      height: getProportionateScreenHeight(360),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(18),
                right: getProportionateScreenWidth(20),
                bottom: getProportionateScreenHeight(20),
            ),
            child: SectionTitle(
              title: "Mood of the Day",
              press: () {},
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                    if (demoProducts[index].isPopular)
                      return ProductCard(product: demoProducts[index]);

                    return SizedBox
                        .shrink(); // here by default width and height is 0
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


