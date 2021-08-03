import 'package:e_shopex/components/custom_svg_icon.dart';
import 'package:e_shopex/components/default_button.dart';
import 'package:e_shopex/components/form_error.dart';
import 'package:e_shopex/components/no_account_text.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(13)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text("Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Enter your email address below to reset password",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.09),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
      const ForgotPassForm({Key key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {

  final _formkey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value){
              if(value.isNotEmpty && errors.contains(kEmailNullError)){
                setState(() {
                  errors.remove(kEmailNullError);
                });
              }
              else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError) ){
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if(value.isEmpty && !errors.contains(kEmailNullError)){
                setState(() {
                  errors.add(kEmailNullError);
                });
              }
              else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError) ){
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Enter your Email",
              labelText: "Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Mail.svg",
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(12),),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(67),
            ),
            child: DefaultButton(
              text: "Reset Password",
              press: () {
                if(_formkey.currentState.validate())
                  {

                  }
              },
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          NoAccountText(),
        ],
      ),
    );
  }
}
