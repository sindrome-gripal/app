import 'package:flutter/material.dart';

import '../size_config.dart';
import '../theme.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(40),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: AppColors.primary,
          onPressed: press,
          child: Text(
            text!,
            style: TextStyle(
              color: AppColors.text,
              fontSize: getProportionateScreenWidth(18),
            ),
          )),
    );
  }
}
