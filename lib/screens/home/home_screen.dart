import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/constants.dart';
import 'package:furniture_ui/size_config.dart';
import 'package:furniture_ui/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This helps to make our UI responsibe throughout out every screens
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: SizeConfig.defaultSize,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: SizeConfig.defaultSize,
          ),
        ),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        ),
      ],
    );
  }
}
