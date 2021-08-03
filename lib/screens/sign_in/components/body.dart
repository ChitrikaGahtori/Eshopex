import 'package:e_shopex/components/no_account_text.dart';
import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(21),
                vertical: getProportionateScreenHeight(22),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.0525),
                  Container(
                    width: SizeConfig.screenWidth * 0.67,
                    child: Image.asset(
                       "assets/logo/Eshopex_logo.png",
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.023,),
                  Text("Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(30),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.023,),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.023,),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        )
    );
  }
}
