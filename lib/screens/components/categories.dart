import 'package:flutter/material.dart';
import 'package:furniture_ui/models/Categories.dart';
import 'package:furniture_ui/screens/components/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
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
