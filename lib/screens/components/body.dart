import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/components/title_text.dart';
import 'package:furniture_ui/constants.dart';
import 'package:furniture_ui/models/Product.dart';
import 'package:furniture_ui/screens/components/categories.dart';
import 'package:furniture_ui/screens/components/product_card.dart';
import 'package:furniture_ui/services/fetch_Categories.dart';
import 'package:furniture_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize! * 2), //20
            child: const TitleText(
              title: "Browse by categories",
            ),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Categories(categories: snapshot.data!);
              } else {
                return Center(child: Image.asset("assets/ripple.gif"));
              }
            },
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(title: "Recommends for You"),
          ),
          RecommandProducts()
        ],
      ),
    );
  }
}

class RecommandProducts extends StatelessWidget {
  const RecommandProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize! * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 30,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) =>
            ProductCard(product: product, press: () {}),
      ),
    );
  }
}
