import "package:flutter/material.dart";
import "package:furniture_ui/constants.dart";
import "package:furniture_ui/models/Product.dart";
import 'package:furniture_ui/size_config.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultSize! * 2),
            height: defaultSize * 37.5,
            width: defaultSize * 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  product.category.toString().toUpperCase(),
                  style: lightTextStyle,
                ),
                SizedBox(
                  height: defaultSize,
                ),
                Text(
                  product.title.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: defaultSize * 2.4,
                    letterSpacing: -0.8,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: defaultSize * 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
