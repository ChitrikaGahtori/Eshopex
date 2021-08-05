import 'package:e_shopex/screens/forgot_password/components/body.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  // const ForgotPasswordScreen({Key key}) : super(key: key);

  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
