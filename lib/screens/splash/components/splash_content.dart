import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);

  final text ,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 3),
        Text(text ,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Spacer(),
        Image.asset(
          image,
          // height: getProportionateScreenHeight(290),
          // width: getProportionateScreenWidth(290),
          height: 330,
          width: 340,
        ),
      ],
    );
  }
}