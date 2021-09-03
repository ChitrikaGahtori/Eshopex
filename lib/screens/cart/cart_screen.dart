import 'package:e_shopex/models/Cart.dart';
import 'package:e_shopex/screens/cart/components/body.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';
import 'package:e_shopex/screens/cart/components/check_out_card.dart';


class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(80),
          ),
          child: Column(
            children: [
              Text("My Cart",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenHeight(25.1),
                ),
              ),
              Text(
                "${demoCarts.length} items",
                style: TextStyle(
                    color: Color(0xFF535353),
                    fontSize: getProportionateScreenHeight(15),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }
}
