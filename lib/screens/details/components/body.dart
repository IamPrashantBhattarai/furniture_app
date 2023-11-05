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
            height: defaultSize! * 37.5,
            width: defaultSize! * 15,
            child: Column(
              children: <Widget>[
                Text(
                  product.category,
                  style: lightTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
