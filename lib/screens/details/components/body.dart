import "package:flutter/material.dart";
import "package:furniture_ui/models/Product.dart";
import "package:furniture_ui/screens/details/components/product_info.dart";
import 'package:furniture_ui/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProductInfo(product: product),
        ],
      ),
    );
  }
}
