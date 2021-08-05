import 'package:e_shopex/components/custom_svg_icon.dart';
import 'package:e_shopex/components/default_button.dart';
import 'package:e_shopex/components/form_error.dart';
import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignForm extends StatefulWidget {
  // const SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  bool rememberMe = false;
  final List<String> errors = [];

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
                  return "";
                }
                else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError) ){
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                  return "";
                }
                return null;
              },
              validator: (value) {
                if(value.isEmpty && !errors.contains(kEmailNullError)){
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                  return "";
                }
                else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError) ){
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                  return "";
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
            SizedBox(height: getProportionateScreenHeight(22),),
            TextFormField(
              obscureText: true,
              onSaved: (newValue) => password = newValue,
              onChanged: (value){
                if(value.isNotEmpty && errors.contains(kPassNullError)){
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                  return "";
                }
                else if (value.length >= 6 && errors.contains(kShortPassError) ){
                  setState(() {
                    errors.remove(kShortPassError);
                  });
                  return "";
                }
                return null;
              },
              validator: (value) {
                if(value.isEmpty && !errors.contains(kPassNullError)){
                  setState(() {
                    errors.add(kPassNullError);
                  });
                  return "";
                }
                else if (value.length < 6 && !errors.contains(kShortPassError) ){
                  setState(() {
                    errors.add(kShortPassError);
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter your Password",
                labelText: "Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgIcon: "assets/icons/Lock.svg",
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(8),),
            Row(
              children: [
                Checkbox(
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
                  child: Text("Forgot Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(15),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(90),
              ),
              child: DefaultButton(
                text: "Login",
                press: () {
                  if (_formkey.currentState.validate()){
                    _formkey.currentState.save();
                  }
                },
              ),
            ),
          ],
        )
    );
  }
}



