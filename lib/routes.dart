import 'package:e_shopex/screens/cart/cart_screen.dart';
import 'package:e_shopex/screens/details/details_screen.dart';
import 'package:e_shopex/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_shopex/screens/otp/otp_screen.dart';
import 'package:e_shopex/screens/sign_in/sign_in_screen.dart';
import 'package:e_shopex/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:e_shopex/screens/splash/splash_screen.dart';
import 'package:e_shopex/screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};

