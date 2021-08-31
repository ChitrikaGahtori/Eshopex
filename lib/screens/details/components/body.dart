import 'package:e_shopex/components/default_button.dart';
import 'package:e_shopex/models/product.dart';
import 'package:e_shopex/size_config.dart';
import 'package:e_shopex/screens/details/components/top_rounded_container.dart';
import 'package:e_shopex/screens/details/components/color_dots.dart';
import 'package:flutter/material.dart';
import 'product_images.dart';
import 'product_description.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {

  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8),
                            vertical: getProportionateScreenHeight(10),
                          ),
                          child: ColorDots(product: product,),
                        ),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              bottom: getProportionateScreenWidth(40),
                              top: getProportionateScreenWidth(4),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(13),
                                vertical: getProportionateScreenHeight(40),
                              ),
                              child: DefaultButton(
                                text: "Add To Cart",
                                press: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}






