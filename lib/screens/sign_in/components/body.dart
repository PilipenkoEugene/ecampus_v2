import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                height: getProportionateScreenHeight(10),
              ),
              Text(
                "Войдите в свою запись,\nиспользуя логин и пароль",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor,
                  fontFamily: "Montserrat",
                  fontSize: getProportionateScreenHeight(25),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SigInFormState createState() => _SigInFormState();
}

class _SigInFormState extends State<SignInForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(25),
              vertical: getProportionateScreenHeight(5),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: getProportionateScreenHeight(25),
              ),
              decoration: InputDecoration(
                hintText: "Логин",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(25),
              vertical: getProportionateScreenHeight(5),
            ),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: getProportionateScreenHeight(25),
              ),
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: "Пароль",
                border: InputBorder.none,
                suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          SizedBox(
            width: getProportionateScreenWidth(280),
            height: getProportionateScreenHeight(65),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(17, 148, 200, 1),
              ),
              onPressed: () {},
              child: Text(
                "Войти",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(25),
                  fontFamily: "Montserrat",
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(180),
            height: getProportionateScreenHeight(55),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "поддержка",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(25),
                  fontFamily: "Montserrat",
                  color: Color.fromARGB(255, 100, 100, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
