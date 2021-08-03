import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Need an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15.58),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text("Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15.58),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}