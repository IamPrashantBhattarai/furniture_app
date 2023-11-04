import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui/constants.dart';
import 'package:furniture_ui/models/Product.dart';
import 'package:furniture_ui/size_config.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  //That things we have to pass it
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widgets>[
          IconButton(
            onPressed: onPressed(){},
            icon: SvgPicture.asset("assets/icons/bag.svg"),
          )
        ],
      ),
    );
  }
}
