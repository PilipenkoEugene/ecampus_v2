import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
    this.text = "",
    this.press,
  }) : super(key: key);
  final String text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenHeight(450),
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kSecondaryColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenHeight(25),
            fontFamily: "Montserrat",
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
