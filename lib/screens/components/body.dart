import 'package:flutter/material.dart';
import 'package:furniture_ui/components/title_text.dart';
import 'package:furniture_ui/constants.dart';
import 'package:furniture_ui/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize! * 2), //20
            child: TitleText(
              title: "Browse by categories",
            ),
          ),
          SizedBox(
            width: defaultSize * 20.5, //205
            child: AspectRatio(
              aspectRatio: 0.83,
              child: Stack(
                children: [
                  Container(
                    color: Colors.blueGrey,
                  ),
                  AspectRatio(
                    aspectRatio: 1.025,
                    child: Container(
                      color: kSecondaryColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
