import 'package:flutter/material.dart';
import 'package:e_shopex/models/product.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: widget.product.id.toString(),
          child: Container(
            width: getProportionateScreenWidth(250),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(widget.product.images[selectedImage]),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(13),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.product.images.length, (index) => buildSmallPreview(index)),
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenHeight(16)),
        padding: EdgeInsets.all(getProportionateScreenHeight(2)),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: selectedImage==index ? Colors.blueAccent.shade400 : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}


