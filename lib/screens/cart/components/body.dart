import 'package:e_shopex/models/Cart.dart';
import 'package:e_shopex/screens/cart/components/cart_item_card.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18),
        vertical: getProportionateScreenWidth(17),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context,index) => Padding(
          padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(12)),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
              decoration: BoxDecoration(
                color: Color(0xFF98B7D5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: CartItemCard(cart: demoCarts[index],),
          ),
        ),
      ),
    );
  }
}
