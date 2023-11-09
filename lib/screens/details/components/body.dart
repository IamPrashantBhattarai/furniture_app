import "package:flutter/material.dart";
import "package:furniture_ui/constants.dart";
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProductInfo(product: product),
          Container(
            padding: EdgeInsets.only(
              top: defaultSize! * 9,
              left: defaultSize * 2,
              right: defaultSize * 2,
            ),
            // height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultSize * 1.2),
                topRight: Radius.circular(defaultSize * 1.2),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  product.subTitle.toString(),
                  style: TextStyle(
                    fontSize: defaultSize * 1.8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: defaultSize * 3,
                ),
                Text(
                  product.description.toString(),
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.7),
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: defaultSize * 3,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
