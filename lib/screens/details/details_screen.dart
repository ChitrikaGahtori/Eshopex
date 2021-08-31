import 'package:e_shopex/models/product.dart';
import 'package:e_shopex/screens/details/components/body.dart';
import 'package:e_shopex/screens/details/components/custom_app_bar.dart';
import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppBar(args.product.rating),
        body: Body(product: args.product),
    );
  }
}


class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
