import 'package:flutter/material.dart';
import 'package:e_shopex/size_config.dart';
import 'package:e_shopex/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => searchField()),
        // );
      },
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                  height: SizeConfig.screenHeight*0.055,
                  width: SizeConfig.screenWidth*0.906,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Icon(Icons.search,color: Colors.grey,),
                      ),
                      SizedBox(width: getProportionateScreenHeight(7)),
                      Text("Search Product",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

