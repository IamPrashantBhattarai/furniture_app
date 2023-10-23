import 'package:flutter/material.dart';
import 'package:furniture_ui/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TitleText(
            title: "Browse by categories",
          ),
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,
    this.defaultSize,
  });

  final double? defaultSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize! * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
