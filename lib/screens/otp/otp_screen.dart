import 'package:e_shopex/screens/otp/components/body.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {

  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
