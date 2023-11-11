import "package:flutter/material.dart";
import "package:furniture_ui/models/Product.dart";
import "package:furniture_ui/screens/details/components/product_description.dart";
import "package:furniture_ui/screens/details/components/product_info.dart";
import "package:furniture_ui/size_config.dart";

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.screenHeight! - AppBar().preferredSize.height,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductInfo(product: product),
            Positioned(
              top: defaultSize! * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Image.network(
                product.image.toString(),
                fit: BoxFit.cover,
                height: defaultSize * 37.8,
                width: defaultSize * 36.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
