import 'package:flutter/material.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Stack(
        children: [
          Container(
            width: SizeConfig.screenWidth*0.990,
            height: SizeConfig.screenHeight*0.180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/images/discount_background.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(22),
                vertical: getProportionateScreenHeight(17)),
            child: Container(
                // alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(text: "A Summer Great Offers\n",
                       style: TextStyle(
                         fontSize: getProportionateScreenWidth(20),
                         fontWeight: FontWeight.bold,
                       ),
                      ),
                      TextSpan(
                        text: "Cashback 20%",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(25),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
