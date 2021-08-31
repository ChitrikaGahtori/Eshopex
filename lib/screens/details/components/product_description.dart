import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_shopex/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:readmore/readmore.dart';


class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
          child: Text(
            product.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(19),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(5),),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(11)),
            width: getProportionateScreenWidth(62),
            decoration: BoxDecoration(
              color: product.isFavourite ? Colors.grey.shade300 : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",

              color: product.isFavourite ? Colors.lightBlue.shade800 : Color(0xFF98B7D5),
              height: getProportionateScreenWidth(20),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(5),),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(22),
            right: getProportionateScreenWidth(64),
          ),
          child: ReadMoreText(
            product.description,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(15),
            ),
            trimLines: 3,
            colorClickableText: Colors.lightBlue.shade800,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'See more Details',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue.shade800,
            ),
          ),
        ),
      ],
    );
  }
}