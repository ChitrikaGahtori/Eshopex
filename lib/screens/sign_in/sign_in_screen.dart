import 'package:e_shopex/screens/sign_in/components/body.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
