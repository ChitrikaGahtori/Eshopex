import 'package:e_shopex/models/Cart.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({Key key, @required this.cart}) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 105,
          child: AspectRatio(
            aspectRatio: 0.95,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(14.9),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenHeight(17.5),
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "Rs ${cart.product.price}",
                style: TextStyle(
                  color: Colors.lightBlue.shade900,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenHeight(15),
                ),
                children: [
                  TextSpan(
                      text: " x${cart.numOfItem}",
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenHeight(15),
                      ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );

  }
}
