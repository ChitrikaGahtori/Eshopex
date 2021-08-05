import 'package:e_shopex/screens/sign_up/components/body.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {

  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
