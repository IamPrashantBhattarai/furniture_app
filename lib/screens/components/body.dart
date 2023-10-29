import 'package:flutter/material.dart';
import 'package:furniture_ui/components/title_text.dart';
import 'package:furniture_ui/models/Categories.dart';
import 'package:furniture_ui/screens/components/category_card.dart';
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
                  print(snapshot.data);
                  return Categories(categories: snapshot.data!);
                } else {
                  return Center(child: Image.asset("assets/ripple.gif"));
                }
              })
        ],
      ),
    );
  }
}

//ignore: must_be_immutable
class Categories extends StatelessWidget {
  Categories({
    super.key,
    required this.categories,
  });

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}
