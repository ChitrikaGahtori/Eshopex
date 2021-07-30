import 'package:e_shopex/components/default_button.dart';
import 'package:e_shopex/constants.dart';
import 'package:e_shopex/screens/sign_in/sign_in_screen.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Eshopex , Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We help people connect with store \naround many states of India",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                      onPageChanged: (value) {
                          setState(() {
                            currentPage = value;
                          });
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context , index) => SplashContent(
                        text: splashData[index]['text'],
                        image: splashData[index]['image'],
                      )
                  ),
              ),

              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(90) ,
                  ),
                  child: Column(
                    children: [
                       Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                                splashData.length,
                                (index) => buildDot(index: index),
                          ),
                       ),
                       Spacer(flex: 3),
                       DefaultButton(
                         text: "Continue",
                         press: () {
                           Navigator.pushNamed(context, SignInScreen.routeName);
                         },
                       ),
                       Spacer(flex: 1),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}




