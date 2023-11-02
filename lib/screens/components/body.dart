import 'package:flutter/material.dart';
import 'package:furniture_ui/components/title_text.dart';
import 'package:furniture_ui/screens/components/categories.dart';
import 'package:furniture_ui/screens/components/recommand_products.dart';
import 'package:furniture_ui/services/fetch_Categories.dart';
import 'package:furniture_ui/services/fetch_Products.dart';
import 'package:furniture_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
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
            const Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleText(title: "Recommends for You"),
            ),
            FutureBuilder(
                future: fetchProducts(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? RecommandProducts(
                          products: snapshot.data!,
                        )
                      : Center(child: Image.asset("assets/ripple.gif"));
                })
          ],
        ),
      ),
    );
  }
}
