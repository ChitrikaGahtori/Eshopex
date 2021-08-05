import 'package:e_shopex/components/default_button.dart';
import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/sign_in/sign_in_screen.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {

  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  maxLength: 1,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),

              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin3FocusNode);
                  },            ),

              ),

              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin4FocusNode);
                  },
                ),
              ),

              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length==1){
                      pin4FocusNode.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.073),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(35),
            ),
            child: DefaultButton(
              text: "Verify and Proceed",
              press: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}




