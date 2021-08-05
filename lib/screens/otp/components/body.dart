import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/otp/components/otp_form.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(39.9),
              vertical: getProportionateScreenHeight(30)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: SizeConfig.screenHeight * 0.018),
                Container(
                  width: SizeConfig.screenWidth * 0.690,
                  child: Image.asset(
                    "assets/images/OTPVerification.png",
                  ),
                ),
                Text("OTP Verification",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(29.5),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Text("Enter the OTP sent to +917668427847",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15.5),
                  ),
                ),
                buildTimer(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                OtpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.136),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't receive the OTP?",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(15.58),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text("RESEND OTP",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.58),
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (context , value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
