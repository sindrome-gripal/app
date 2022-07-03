import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../../../theme.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.title,
  }) : super(key: key);
  final String? text, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
