import 'package:flutter/material.dart';
import 'package:e_shopex/size_config.dart';
import 'package:e_shopex/screens/home/components/home_header.dart';
import 'package:e_shopex/screens/home/components/search_field.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blueAccent.shade400,
                  height: SizeConfig.screenHeight * 0.1385,
                ),
                Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(8)),
                    HomeHeader(),
                    SizedBox(height: getProportionateScreenWidth(8)),
                    SearchField(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
