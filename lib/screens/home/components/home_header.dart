import 'package:e_shopex/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_shopex/size_config.dart';

class HomeHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Icon(
                Icons.menu,
                size: SizeConfig.screenWidth*0.09,
                color: Colors.white,
              ),
            ),
            SizedBox(width : getProportionateScreenHeight(18)),
            Text("Eshopex",
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: SizeConfig.screenWidth*0.372,),
            Row(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Icon(
                    Icons.notifications,
                    size: SizeConfig.screenWidth*0.07,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth*0.025,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    size: SizeConfig.screenWidth*0.07,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}


