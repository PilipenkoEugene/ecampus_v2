import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text = "",
    this.image = "",
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenHeight(25),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: getProportionateScreenHeight(50),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(350),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
