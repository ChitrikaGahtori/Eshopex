import 'package:e_shopex/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCancelCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(35),
      width: getProportionateScreenWidth(35),
      child: FlatButton(
        padding: EdgeInsets.zero,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(49.5)),
        onPressed: press,
        child: Icon(icon,),
      ),
    );
  }
}