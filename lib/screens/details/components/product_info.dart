import "package:flutter/material.dart";
import "package:furniture_ui/constants.dart";
import "package:furniture_ui/models/Product.dart";
import "package:furniture_ui/size_config.dart";

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return Container();
  }
}
