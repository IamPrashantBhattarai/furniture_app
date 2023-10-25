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
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    color: Colors.blueAccent,
                  ),
                  //As this is our custom shape so we should use ClipPath for round corners
                  ClipPath(
                    clipper: CategoryCustomShape(),
                    child: AspectRatio(
                      aspectRatio: 1.025,
                      child: Container(
                        color: kSecondaryColor,
                      ),
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

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
