import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../widget/body.dart';


class SplashScreenPage extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
