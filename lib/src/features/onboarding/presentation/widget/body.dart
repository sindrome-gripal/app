import 'package:basearch/src/features/onboarding/presentation/widget/splash_content.dart';
import 'package:basearch/src/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../theme.dart';
import '../../../../widget/default_button.dart';
import '../widget/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "tile": "Simples...",
      "text": "A simplicidade acaba de chegar em suas mãos!",
    },
    {
      "tile": "Fácil...",
      "text":
          "Agora sem desculpas para treinar! Você treina no conforto da sua casa.",
    },
    {
      "tile": "Rápido...",
      "text": "Com o melhor treinador para te dar o melhor suporte!",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Spacer(flex: 3),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  title: splashData[index]["tile"],
                  text: splashData[index]["text"],
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
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.of(context).pushReplacementNamed('/login/');
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot({int? index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? AppColors.primary : AppColors.divider,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
