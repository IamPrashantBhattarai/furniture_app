import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/components/title_text.dart';
import 'package:furniture_ui/constants.dart';
import 'package:furniture_ui/models/Product.dart';
import 'package:furniture_ui/screens/components/categories.dart';
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
          ProductCard(
            product: product,
            press: () {},
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.press,
  });

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize! * 14.5,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(title: product.title),
              ),
              SizedBox(height: defaultSize / 2),
              Text("\$${product.price}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
