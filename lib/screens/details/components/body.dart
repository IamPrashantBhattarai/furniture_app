import "package:flutter/material.dart";
import "package:furniture_ui/models/Product.dart";
import "package:furniture_ui/screens/details/components/product_description.dart";
import "package:furniture_ui/screens/details/components/product_info.dart";

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProductInfo(product: product),
          ProductDescription(
            product: product,
            press: () {},
          )
        ],
      ),
    );
  }
}
