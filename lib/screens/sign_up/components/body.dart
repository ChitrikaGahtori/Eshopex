import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/sign_in/sign_in_screen.dart';
import 'package:e_shopex/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(21.5),
              vertical: getProportionateScreenHeight(13)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.018),
              Text("Let's Get Started!",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Create an account to Eshopex to shop your favourite products",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              SignUpForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15.58),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context , SignInScreen.routeName),
                    child: Text("Sign In here",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(15.58),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
             ),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
            ],
          ),
        ),
      ),
    );
  }
}

