import 'package:flutter/material.dart';
import 'package:furniture_ui/models/Product.dart';
import 'package:furniture_ui/screens/components/product_card.dart';
import 'package:furniture_ui/size_config.dart';

class RecommandProducts extends StatelessWidget {
  const RecommandProducts({
    super.key,
    required this.products,
  });
  //Because our Api provides the list of the products
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize! * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 30,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) =>
            ProductCard(product: products[index], press: () {}),
      ),
    );
  }
}
