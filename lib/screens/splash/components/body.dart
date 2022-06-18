import 'package:ecampus_v2/constants.dart';
import 'package:ecampus_v2/screens/sign_in/sign_in_screen.dart';
import 'package:ecampus_v2/screens/splash/components/splash_content.dart';
import 'package:ecampus_v2/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/continue_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Добро пожаловать!\nАбсолютно новый eCampus.",
      "image": "assets/images/new_inter.png"
    },
    {
      "text": "Теперь доступен для всех платформ.",
      "image": "assets/images/gp_aps.png"
    },
    {
      "text": "Используйте с наслаждением.\nМы ждем вашей обратной связи!",
      "image": "assets/images/feedback.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/icons/skfu-logo.png',
                  width: getProportionateScreenWidth(110),
                  height: getProportionateScreenHeight(105),
                ),
                Text(
                  "eCampus",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(60),
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value % splashData.length;
                  });
                },
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index == -1
                          ? splashData.length - 1
                          : index % splashData.length]["image"]!
                      .toString(),
                  text: splashData[index == -1
                          ? splashData.length - 1
                          : index % splashData.length]["text"]!
                      .toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    ContinueButton(
                        text: "Продолжить",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        }),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kTextColor : kPrimaryLightColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
