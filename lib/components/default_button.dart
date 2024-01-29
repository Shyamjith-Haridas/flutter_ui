import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configuration.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final Function() press;
  const DefaultButton({
    super.key,
    required this.buttonText,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(20),
              ),
            )),
        onPressed: press,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: getProportionateScreenHeight(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
