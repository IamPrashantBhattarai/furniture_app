import 'package:flutter/material.dart';
import 'package:furniture_ui/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  //That things we have to pass it
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      Text("hello my love");
    );
  }
}
